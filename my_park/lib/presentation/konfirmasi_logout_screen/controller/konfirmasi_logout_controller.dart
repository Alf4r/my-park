import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/konfirmasi_logout_screen/models/konfirmasi_logout_model.dart';

/// A controller class for the KonfirmasiLogoutScreen.
///
/// This class manages the state of the KonfirmasiLogoutScreen, including the
/// current konfirmasiLogoutModelObj
class KonfirmasiLogoutController extends GetxController {
  Rx<KonfirmasiLogoutModel> konfirmasiLogoutModelObj =
      KonfirmasiLogoutModel().obs;
}
