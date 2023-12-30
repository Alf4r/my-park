import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/pengurangan_two_screen/models/pengurangan_two_model.dart';

/// A controller class for the PenguranganTwoScreen.
///
/// This class manages the state of the PenguranganTwoScreen, including the
/// current penguranganTwoModelObj
class PenguranganTwoController extends GetxController {
  Rx<PenguranganTwoModel> penguranganTwoModelObj = PenguranganTwoModel().obs;
}
