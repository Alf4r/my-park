import '../controller/notification_kososng_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationKososngScreen.
///
/// This class ensures that the NotificationKososngController is created when the
/// NotificationKososngScreen is first loaded.
class NotificationKososngBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationKososngController());
  }
}
