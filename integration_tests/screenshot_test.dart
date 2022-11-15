import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../lib/main.dart' as app;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('screenshots', (WidgetTester tester) async {
    // Build the app.
    app.main();

    if (Platform.isAndroid) {
      // This is required prior to taking the screenshot (Android only).
      await binding.convertFlutterSurfaceToImage();
    }

    // Login Screen
    await tester.pumpAndSettle();

    final emailAddress = find.bySemanticsLabel('Email Address');
    final image = find.byType(Image);
    final password = find.bySemanticsLabel('Password');
    final signIn = find.widgetWithText(ElevatedButton, "Sign In");

    while (findsNothing.matches(emailAddress, {})) {
      await tester.pumpAndSettle();
    }

    expect(emailAddress, findsOneWidget);

    await binding.takeScreenshot('01Login');

    await tester.tap(emailAddress);
    await tester.enterText(emailAddress, 'tester@insidiouslogic.systems');
    await tester.pumpAndSettle();

    await tester.tap(image);

    await tester.tap(password);
    await tester.enterText(password, 'zombies climbing water towers');
    await tester.pumpAndSettle();

    await tester.tap(image);

    await tester.tap(signIn);
    await tester.pumpAndSettle();

    // Dashboard
  });
}
