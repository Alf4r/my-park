import '../controller/maps_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapsScreen.
///
/// This class ensures that the MapsController is created when the
/// MapsScreen is first loaded.
class MapsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsController());
  }
}
