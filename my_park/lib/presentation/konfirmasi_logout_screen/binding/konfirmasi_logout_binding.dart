import '../controller/konfirmasi_logout_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KonfirmasiLogoutScreen.
///
/// This class ensures that the KonfirmasiLogoutController is created when the
/// KonfirmasiLogoutScreen is first loaded.
class KonfirmasiLogoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KonfirmasiLogoutController());
  }
}
