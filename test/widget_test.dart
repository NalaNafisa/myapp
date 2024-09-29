import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('Scan Front Page UI test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app shows "Scan Front" in the AppBar.
    expect(find.text('Scan Front'), findsOneWidget);

    // Verify that the text instruction "Take the front side face" is displayed.
    expect(find.text('Take the front side face'), findsOneWidget);

    // Verify that the camera icon is displayed.
    expect(find.byIcon(Icons.camera_alt), findsOneWidget);

    // Verify that the mute icon is displayed.
    expect(find.byIcon(Icons.volume_off), findsOneWidget);

    // Verify that the gallery icon is displayed.
    expect(find.byIcon(Icons.photo_library), findsOneWidget);

    // Tap the camera icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.camera_alt));
    await tester.pump();

    // Additional actions like simulating camera capture or verifying other UI elements can be added here.
  });
}
