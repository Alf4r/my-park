import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/hasil_screen/models/hasil_model.dart';

/// A controller class for the HasilScreen.
///
/// This class manages the state of the HasilScreen, including the
/// current hasilModelObj
class HasilController extends GetxController {
  Rx<HasilModel> hasilModelObj = HasilModel().obs;
}
