// your_package_name/test/stack_images_page_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infinite_zoom_effect/infinite_zoom_effect.dart';

void main() {
  testWidgets('StackImagesPage should render without errors', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: StackImagesPage(
          imageCount: 1,
          imageNames: ['image.png'],
          scales: [1.0],
          widths: [200.0],
          heights: [100.0],
          minScale: 0.5,
          maxScale: 2.0,
          tops: [0],
          bottoms: [0],
          lefts: [0],
          rights: [0],
        ),
      ),
    );

    // Verify that StackImagesPage is rendered.
    expect(find.byType(StackImagesPage), findsOneWidget);
  });
}
