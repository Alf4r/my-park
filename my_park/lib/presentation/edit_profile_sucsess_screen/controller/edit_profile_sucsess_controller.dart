import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/edit_profile_sucsess_screen/models/edit_profile_sucsess_model.dart';

/// A controller class for the EditProfileSucsessScreen.
///
/// This class manages the state of the EditProfileSucsessScreen, including the
/// current editProfileSucsessModelObj
class EditProfileSucsessController extends GetxController {
  Rx<EditProfileSucsessModel> editProfileSucsessModelObj =
      EditProfileSucsessModel().obs;
}
