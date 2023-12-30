import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/cari_screen/models/cari_model.dart';

/// A controller class for the CariScreen.
///
/// This class manages the state of the CariScreen, including the
/// current cariModelObj
class CariController extends GetxController {
  Rx<CariModel> cariModelObj = CariModel().obs;
}
