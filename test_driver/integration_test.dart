import 'dart:io';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  await integrationDriver(
    onScreenshot: (String screenshotName, List<int> screenshotBytes) async {
      final File image = File(
        '${Platform.operatingSystem}/screenshots/$screenshotName.png',
      );
      image.writeAsBytesSync(screenshotBytes);
      // Return false if the screenshot is invalid.
      return true;
    },
  );
}