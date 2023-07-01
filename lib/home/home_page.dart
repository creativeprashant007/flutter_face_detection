import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Column,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SmartFaceCamera(
          autoCapture: true,
          defaultCameraLens: CameraLens.front,
          message: 'Center your face in the square',
          onCapture: (File? image) {},
        ));
  }
}
