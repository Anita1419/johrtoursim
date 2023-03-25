import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MaskText extends StatelessWidget {
  const MaskText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text("Mask Text with Image"),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        leading: Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 25,
            onPressed: () {},
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaskedImage(
              image: NetworkImage("https://images.unsplash.com/photo-1525947088131-b701cd0f6dc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
              child: Text(
                "MASK",
                style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MaskedImage extends StatelessWidget {
  final ImageProvider image;
  final Widget child;
  const MaskedImage({required this.image, required this.child});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ui.Image>(
        future: loadImage(),
        builder: (context,snap) => snap.hasData
            ? ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) => ImageShader
            (snap.data!,
              TileMode.clamp,
              TileMode.clamp,
              Matrix4.identity().storage),
            child: child)
            :Container(),

    );

  }

  Future<ui.Image> loadImage() async {
    final completer = Completer<ui.Image>();
    final stream = image.resolve(ImageConfiguration());
    stream.addListener(
      ImageStreamListener((info, _) => completer.complete(info.image))
    );
    return completer.future;

  }
}
