import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/logout_screen/models/logout_model.dart';

/// A controller class for the LogoutScreen.
///
/// This class manages the state of the LogoutScreen, including the
/// current logoutModelObj
class LogoutController extends GetxController {
  Rx<LogoutModel> logoutModelObj = LogoutModel().obs;
}
