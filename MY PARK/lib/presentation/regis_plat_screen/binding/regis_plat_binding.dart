import '../controller/regis_plat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisPlatScreen.
///
/// This class ensures that the RegisPlatController is created when the
/// RegisPlatScreen is first loaded.
class RegisPlatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisPlatController());
  }
}
