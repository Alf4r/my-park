import '../controller/registrasi_kendaraan_berhasil_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrasiKendaraanBerhasilScreen.
///
/// This class ensures that the RegistrasiKendaraanBerhasilController is created when the
/// RegistrasiKendaraanBerhasilScreen is first loaded.
class RegistrasiKendaraanBerhasilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrasiKendaraanBerhasilController());
  }
}
