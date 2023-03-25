import 'dart:math';

import 'package:design_app/tinder/user.dart';
import 'package:flutter/material.dart';





enum CardStatus {like,dislike,superlike}


class CardProvider extends ChangeNotifier{
  List<User> _user = [];
  bool _isDragging =false;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;
  double _angle =0;

  List<User> get user =>_user;
  Offset get position => _position;
  bool get isDragging => _isDragging;
  double get angle => _angle;

  CardProvider(){
    resetUser();
  }

  void setScreenSize(Size screenSized) {
    _screenSize = screenSized;
  }


  void startPosition(DragStartDetails details){
    _isDragging = true;
    notifyListeners();
  }

  void updatePosition(DragUpdateDetails details){
    _position += details.delta;
    //update angle
    final x = _position.dx;
    _angle = 45 * x / _screenSize.width;


    notifyListeners();
  }

  void endPosition() {
    _isDragging = false;
    notifyListeners();

    final status = getStatus(force: true);

    if(status != null) {
      print({status.toString()});
    }

    switch (status) {
      case CardStatus.like:
        like();
        break;
      case CardStatus.dislike:
        dislike();
        break;
      case CardStatus.superlike:
        superlike();
        break;
      default:
        resetPosition();
    }


  }

  void resetPosition(){
    _isDragging = false;
    _position = Offset.zero;
    _angle = 0;
    notifyListeners();
  }

  double getStatusOpacity(){
    final delta =100;
    final pos = max(_position.dx.abs(),_position.dy.abs());
    final opacity = pos/delta;
    return min(opacity, 1);

  }


  CardStatus? getStatus({bool force = false}) {
    final x = _position.dx;
    final y = _position.dy;
    final forceSuperLike = x.abs() < 20;

    if(force){
      final delta = 100;
      if(x >= delta) {
        return CardStatus.like;
      } else if (x <= -delta){
        return CardStatus.dislike;
      }else if(y <= -delta / 2  && forceSuperLike){
        return CardStatus.superlike;
      }

    }else {
      final delta = 20;
      if(y <= -delta * 2 && forceSuperLike){
        return CardStatus.superlike;
      }else if (x >= delta){
        return CardStatus.like;
      }else if(x <= -delta){
        return CardStatus.dislike;
      }
    }


  }

  void superlike(){
    _angle =0;
    _position -= Offset(0,_screenSize.height);
    _nextCard();
    notifyListeners();
  }



  void dislike(){
    _angle = -20;
    _position -= Offset(2 * _screenSize.width,0);
    _nextCard();
    notifyListeners();
  }



  void like(){
    _angle = 20;
    _position += Offset(2 * _screenSize.width  , 0);
    _nextCard();
    notifyListeners();
  }

  Future _nextCard() async {
    if(_user.isEmpty) return;
    await Future.delayed(Duration(milliseconds: 200));
    _user.removeLast();

    resetPosition();
  }



  void resetUser(){
    _user = <User> [
      User(name: "Johns", age: 20, urlImage: "https://images.unsplash.com/photo-1550524587-2d3f3a95ddb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
      User(name: "Aliya", age:21,urlImage: "https://images.unsplash.com/photo-1496637721836-f46d116e6d34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
      User(name: "Libra", age: 23, urlImage: "https://images.unsplash.com/photo-1489367874814-f5d040621dd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=846&q=80"),
    User(name: "Nibiya",age: 27,urlImage: "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=360&q=80"),
      User(name: "Navya",age: 24,urlImage: "https://images.unsplash.com/photo-1484820540004-14229fe36ca4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
     User(name: "Lipya" ,age: 25,urlImage: "https://images.unsplash.com/photo-1528916451049-e5d097b61db2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
      
    ].reversed.toList();

    notifyListeners();
  }

}