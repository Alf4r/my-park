import '../controller/hasil_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HasilScreen.
///
/// This class ensures that the HasilController is created when the
/// HasilScreen is first loaded.
class HasilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HasilController());
  }
}
