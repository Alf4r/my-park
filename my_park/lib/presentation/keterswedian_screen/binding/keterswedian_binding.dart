import '../controller/keterswedian_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KeterswedianScreen.
///
/// This class ensures that the KeterswedianController is created when the
/// KeterswedianScreen is first loaded.
class KeterswedianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeterswedianController());
  }
}
