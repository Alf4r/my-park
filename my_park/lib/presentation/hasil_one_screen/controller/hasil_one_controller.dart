import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/hasil_one_screen/models/hasil_one_model.dart';

/// A controller class for the HasilOneScreen.
///
/// This class manages the state of the HasilOneScreen, including the
/// current hasilOneModelObj
class HasilOneController extends GetxController {
  Rx<HasilOneModel> hasilOneModelObj = HasilOneModel().obs;

  int myValue = 0;

  @override
  void onInit() {
    myValue = Get.arguments;
    super.onInit();
  }
}
