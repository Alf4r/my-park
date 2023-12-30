import '../controller/pengurangan_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PenguranganTwoScreen.
///
/// This class ensures that the PenguranganTwoController is created when the
/// PenguranganTwoScreen is first loaded.
class PenguranganTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PenguranganTwoController());
  }
}
