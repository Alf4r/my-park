import '../controller/hasil_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HasilOneScreen.
///
/// This class ensures that the HasilOneController is created when the
/// HasilOneScreen is first loaded.
class HasilOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HasilOneController());
  }
}
