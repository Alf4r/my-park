import '../controller/stop_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StopScreen.
///
/// This class ensures that the StopController is created when the
/// StopScreen is first loaded.
class StopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StopController());
  }
}
