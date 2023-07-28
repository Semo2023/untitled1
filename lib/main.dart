import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageChangeScreen(),
    );
  }
}

class ImageChangeScreen extends StatefulWidget {
  @override
  _ImageChangeScreenState createState() => _ImageChangeScreenState();
}

class _ImageChangeScreenState extends State<ImageChangeScreen> {
  int _currentImageIndex = 0;
  List<String> _images = [
    "assets/dice1.png",
    "assets/dice2.png",
    "assets/dice3.png",
    "assets/dice4.png",
    "assets/dice5.png",
    "assets/dice6.png",
  ];

  void _changeImage() {
    setState(() {
      _currentImageIndex = Random().nextInt(_images.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text('Dice'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeImage,
          child: Image.asset(_images[_currentImageIndex]),
        ),
      ),
    );
  }
}