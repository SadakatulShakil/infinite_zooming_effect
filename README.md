# infinite_zoom_effect Flutter Package

A Flutter package that provides a customizable `StackImagesPage` widget for displaying a stack of images with interactive scaling and positioning.

## Installation

To use this package, add `infinite_zoom_effect` as a dependency in your `pubspec.yaml` file.

```yaml

dependencies:
  infinite_zoom_effect: ^latest_version

## Than run in terminal
   flutter pub get

## Usage
    import 'package:your_package_name/your_package_name.dart';

## Use the StackImagesPage widget in your Flutter app:

<hr>

<table>
<tr>
<td>
    note: Store images in "root-->assets-->images"

    import 'package:flutter/material.dart';
    import 'package:your_package_name/your_package_name.dart';
    
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

</td>
<td>
<img src="https://drive.google.com/file/d/1FlLHtZdvWIXZiRcHC7Qf99sCRblO_7st/view?usp=sharing" alt="">
</td>
</tr>
</table>

## Customization
    The StackImagesPage widget allows customization of various parameters:

    1. imageCount: Number of images in the stack.
    2. imageNames: List of image file names.
    3. scales: List of scales for each image.
    4. widths: List of widths for each image.
    5. heights: List of heights for each image.
    6. minScale: Minimum scale for the InteractiveViewer.
    7. maxScale: Maximum scale for the InteractiveViewer.
    8. tops: List of top positions for each image.
    9. bottoms: List of bottom positions for each image.
    10. lefts: List of left positions for each image.
    11. rights: List of right positions for each image.
    
    Feel free to experiment with different values to achieve the desired layout and appearance.

## Contributing
    Feel free to contribute to this package. If you find any issues or have suggestions, please open an issue on the https://github.com/SadakatulShakil/infinite_zooming_effect.

## License
    This package is open-source.

