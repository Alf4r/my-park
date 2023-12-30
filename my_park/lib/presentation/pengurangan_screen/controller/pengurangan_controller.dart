import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/pengurangan_screen/models/pengurangan_model.dart';

/// A controller class for the PenguranganScreen.
///
/// This class manages the state of the PenguranganScreen, including the
/// current penguranganModelObj
class PenguranganController extends GetxController {
  Rx<PenguranganModel> penguranganModelObj = PenguranganModel().obs;
}
