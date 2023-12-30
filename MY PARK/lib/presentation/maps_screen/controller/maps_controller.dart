import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/maps_screen/models/maps_model.dart';

/// A controller class for the MapsScreen.
///
/// This class manages the state of the MapsScreen, including the
/// current mapsModelObj
class MapsController extends GetxController {
  Rx<MapsModel> mapsModelObj = MapsModel().obs;
}
