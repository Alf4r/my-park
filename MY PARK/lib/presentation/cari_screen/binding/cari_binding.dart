import '../controller/cari_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CariScreen.
///
/// This class ensures that the CariController is created when the
/// CariScreen is first loaded.
class CariBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CariController());
  }
}
