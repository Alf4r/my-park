import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/summary_not_found_screen/models/summary_not_found_model.dart';

/// A controller class for the SummaryNotFoundScreen.
///
/// This class manages the state of the SummaryNotFoundScreen, including the
/// current summaryNotFoundModelObj
class SummaryNotFoundController extends GetxController {
  Rx<SummaryNotFoundModel> summaryNotFoundModelObj = SummaryNotFoundModel().obs;
}
