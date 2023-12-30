import '../controller/start_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StartOneScreen.
///
/// This class ensures that the StartOneController is created when the
/// StartOneScreen is first loaded.
class StartOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartOneController());
  }
}
