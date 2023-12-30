import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/start_one_screen/models/start_one_model.dart';

/// A controller class for the StartOneScreen.
///
/// This class manages the state of the StartOneScreen, including the
/// current startOneModelObj
class StartOneController extends GetxController {
  Rx<StartOneModel> startOneModelObj = StartOneModel().obs;
}
