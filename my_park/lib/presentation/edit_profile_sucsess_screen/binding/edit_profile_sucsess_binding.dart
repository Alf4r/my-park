import '../controller/edit_profile_sucsess_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfileSucsessScreen.
///
/// This class ensures that the EditProfileSucsessController is created when the
/// EditProfileSucsessScreen is first loaded.
class EditProfileSucsessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileSucsessController());
  }
}
