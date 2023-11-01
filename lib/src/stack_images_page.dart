// your_package_name/lib/src/stack_images_page.dart
import 'package:flutter/material.dart';

class StackImagesPage extends StatefulWidget {
  final int imageCount;
  final List<String> imageNames;
  final List<double> scales;
  final List<double> widths;
  final List<double> heights;
  final double minScale;
  final double maxScale;
  final List<double> tops;
  final List<double> bottoms;
  final List<double> lefts;
  final List<double> rights;

  const StackImagesPage({super.key,
    required this.imageCount,
    required this.imageNames,
    required this.scales,
    required this.widths,
    required this.heights,
    required this.minScale,
    required this.maxScale,
    required this.tops,
    required this.bottoms,
    required this.lefts,
    required this.rights,
  });

  @override
  _StackImagesPageState createState() => _StackImagesPageState();
}

class _StackImagesPageState extends State<StackImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          panEnabled: true,
          maxScale: widget.maxScale,
          minScale: widget.minScale,
          child: Stack(
            alignment: Alignment.center,
            children: _buildImages(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildImages() {
    List<Widget> images = [];

    for (int i = 0; i < widget.imageCount; i++) {
      images.add(
        Positioned(
          top: widget.tops[i],
          bottom: widget.bottoms[i],
          left: widget.lefts[i],
          right: widget.rights[i],
          child: _buildImage(
            widget.imageNames[i],
            widget.scales[i],
            widget.widths[i],
            widget.heights[i],
          ),
        ),
      );
    }

    return images;
  }

  Widget _buildImage(String imageName, double scale, double width, double height) {
    return Transform.scale(
      scale: scale,
      child: Image.asset(
        'assets/images/$imageName',
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
