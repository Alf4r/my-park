import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/history_empty_screen/models/history_empty_model.dart';

/// A controller class for the HistoryEmptyScreen.
///
/// This class manages the state of the HistoryEmptyScreen, including the
/// current historyEmptyModelObj
class HistoryEmptyController extends GetxController {
  Rx<HistoryEmptyModel> historyEmptyModelObj = HistoryEmptyModel().obs;
}
