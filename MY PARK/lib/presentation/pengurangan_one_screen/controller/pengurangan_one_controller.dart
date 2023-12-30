import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/pengurangan_one_screen/models/pengurangan_one_model.dart';

/// A controller class for the PenguranganOneScreen.
///
/// This class manages the state of the PenguranganOneScreen, including the
/// current penguranganOneModelObj
class PenguranganOneController extends GetxController {
  Rx<PenguranganOneModel> penguranganOneModelObj = PenguranganOneModel().obs;
}
