import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ejara_icons/ejara_icons.dart';

void main() {
  testWidgets('Ejara Icon renders an SvgPicture with correct properties',
      (WidgetTester tester) async {
    // Arrange
    const testIcon = EjaraIcons.activity;
    const testColor = Colors.red;
    const testSize = 24.0;

    // Act
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: EjaraIcon(
            testIcon,
            color: testColor,
            size: testSize,
          ),
        ),
      ),
    );

    // Assert
    final svgFinder = find.byType(SvgPicture);
    expect(svgFinder, findsOneWidget);

    final SvgPicture svg = tester.widget(svgFinder);
    expect(svg.width, testSize);
    expect(svg.height, testSize);

    // Testing the color
    //expect(svg.colorFilter, testColor);
  });
}
