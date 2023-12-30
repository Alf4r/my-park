import '../controller/pengurangan_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PenguranganOneScreen.
///
/// This class ensures that the PenguranganOneController is created when the
/// PenguranganOneScreen is first loaded.
class PenguranganOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PenguranganOneController());
  }
}
