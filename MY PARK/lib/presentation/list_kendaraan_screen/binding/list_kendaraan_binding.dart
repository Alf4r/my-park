import '../controller/list_kendaraan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ListKendaraanScreen.
///
/// This class ensures that the ListKendaraanController is created when the
/// ListKendaraanScreen is first loaded.
class ListKendaraanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListKendaraanController());
  }
}
