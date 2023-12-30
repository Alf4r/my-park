import '../controller/profile_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileSettingsScreen.
///
/// This class ensures that the ProfileSettingsController is created when the
/// ProfileSettingsScreen is first loaded.
class ProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingsController());
  }
}
