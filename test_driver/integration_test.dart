import 'dart:io';
import 'package:integration_test/integration_test_driver.dart'
    show testOutputsDirectory;
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  await integrationDriver(
    onScreenshot: (String screenshotName, List<int> screenshotBytes) async {
      final String path = '$testOutputsDirectory/screenshots';

      Directory(path).createSync(recursive: true);

      final File image = File(
        '$path/$screenshotName.png',
      );
      image.writeAsBytesSync(screenshotBytes);

      // Return false if the screenshot is invalid.
      return true;
    },
  );
}
