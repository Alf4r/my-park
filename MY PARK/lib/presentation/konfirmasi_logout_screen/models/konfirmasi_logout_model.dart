import '../../../core/app_export.dart';
import 'form2fill_item_model.dart';

/// This class defines the variables used in the [konfirmasi_logout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KonfirmasiLogoutModel {
  Rx<List<Form2fillItemModel>> form2fillItemList = Rx([
    Form2fillItemModel(
        emailAddress: "Full name".obs, wahabkIcloudCom: "Sajin Tamang".obs),
    Form2fillItemModel(
        emailAddress: "Email address".obs,
        wahabkIcloudCom: "Sajin Tamang @ Figma .com".obs),
    Form2fillItemModel(
        emailAddress: "Phone number".obs,
        wahabkIcloudCom: "+61 04133398285".obs)
  ]);
}
