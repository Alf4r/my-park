import '../controller/sign_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignScreen.
///
/// This class ensures that the SignController is created when the
/// SignScreen is first loaded.
class SignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignController());
  }
}
