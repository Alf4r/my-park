import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/keterswedian_screen/models/keterswedian_model.dart';

/// A controller class for the KeterswedianScreen.
///
/// This class manages the state of the KeterswedianScreen, including the
/// current keterswedianModelObj
class KeterswedianController extends GetxController {
  Rx<KeterswedianModel> keterswedianModelObj = KeterswedianModel().obs;
}
