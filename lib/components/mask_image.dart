import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';
class MaskImageScreen extends StatefulWidget {
  const MaskImageScreen({Key? key}) : super(key: key);

  @override
  _MaskImageScreenState createState() => _MaskImageScreenState();
}

class _MaskImageScreenState extends State<MaskImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181727),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.network("https://images.unsplash.com/photo-1560837616-fee1f3d8753a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  fit: BoxFit.fill,),
                child: Text("MASK" ,style: TextStyle(fontSize: 100),),
              ),
            ),
            Center(
              child: Container(
                child: WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.network("https://images.unsplash.com/photo-1646019577007-fa720d81b890?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                child: Image.asset("assets/images/mask.png")
          ),
              ),
            ),
            Center(
              child: Container(
                child: WidgetMask(
                    blendMode: BlendMode.srcATop,
                    childSaveLayer: true,
                    mask: Image.network("https://images.unsplash.com/photo-1532153955177-f59af40d6472?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    child: Image.asset("assets/images/mask2.png")
                ),
              ),
            ),
            Center(
              child: Container(
                child: WidgetMask(
                    blendMode: BlendMode.srcATop,
                    childSaveLayer: true,
                    mask: Image.network("https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    child: Image.asset("assets/images/mask4.png")
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
