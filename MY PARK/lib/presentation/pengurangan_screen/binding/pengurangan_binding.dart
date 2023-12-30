import '../controller/pengurangan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PenguranganScreen.
///
/// This class ensures that the PenguranganController is created when the
/// PenguranganScreen is first loaded.
class PenguranganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PenguranganController());
  }
}
