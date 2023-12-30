import '../controller/summary_not_found_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SummaryNotFoundScreen.
///
/// This class ensures that the SummaryNotFoundController is created when the
/// SummaryNotFoundScreen is first loaded.
class SummaryNotFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryNotFoundController());
  }
}
