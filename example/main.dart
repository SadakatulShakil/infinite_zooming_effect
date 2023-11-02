import 'package:flutter/material.dart';
import 'package:infinite_zoom_effect/infinite_zoom_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StackImagesPage(
          imageCount: 6,
          imageNames: ['infi1.png', 'infi2.png', 'infi3.png', 'infi4.png', 'infi5.png', 'infi6.png'],
          scales: [0.9, 0.156, 0.035, 0.0105, 0.0060, 0.0039],
          widths: [800.0, 700.0, 700.0, 800.0, 800.0, 800.0],
          heights: [400.0, 10.0, 300.0, 300.0, 300.0, 300.0],
          minScale: 0.5,
          maxScale: 2.0,
          tops: [40, 45, 45, 45.4, 45.5, 45.65],
          bottoms: [5, 5, 5, 5, 5, 5],
          lefts: [0, 0.3, 0.6, 0.9, 1.2, 1.5],
          rights: [0, 0, 0, 0, 0, 0],
        ),
      ),
    );
  }
}
