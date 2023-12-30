import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/notification_kososng_screen/models/notification_kososng_model.dart';

/// A controller class for the NotificationKososngScreen.
///
/// This class manages the state of the NotificationKososngScreen, including the
/// current notificationKososngModelObj
class NotificationKososngController extends GetxController {
  Rx<NotificationKososngModel> notificationKososngModelObj =
      NotificationKososngModel().obs;
}
