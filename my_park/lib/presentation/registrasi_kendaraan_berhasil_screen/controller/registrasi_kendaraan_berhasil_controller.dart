import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/registrasi_kendaraan_berhasil_screen/models/registrasi_kendaraan_berhasil_model.dart';

/// A controller class for the RegistrasiKendaraanBerhasilScreen.
///
/// This class manages the state of the RegistrasiKendaraanBerhasilScreen, including the
/// current registrasiKendaraanBerhasilModelObj
class RegistrasiKendaraanBerhasilController extends GetxController {
  Rx<RegistrasiKendaraanBerhasilModel> registrasiKendaraanBerhasilModelObj =
      RegistrasiKendaraanBerhasilModel().obs;
}
