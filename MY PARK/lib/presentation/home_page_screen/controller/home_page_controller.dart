import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class HomePageController extends GetxController {
  // Controllers for any text fields
  RxString userName = 'Hassan Ali'.obs;
  RxString userEmail = 'hassan@gmail.com'.obs;

  // Add methods to update these properties when the user signs in
  void updateUser(String name, String email) {
    userName.value = name;
    userEmail.value = email;
  }
  var searchController = TextEditingController();

  // Define your onTap methods here
  void onTapNotifications() {
    // Navigation or functionality for notifications
    // Example: Get.to(() => NotificationsScreen());
  }

  void onTapSettings() {
    // Navigation or functionality for settings
    // Example: Get.to(() => SettingsScreen());
  }

  void onTapProfile() {
    // Navigation or functionality for profile
    // Example: Get.to(() => ProfileScreen());
  }

  void onTapCarPlat() {
    Get.toNamed(
      AppRoutes.listKendaraanScreen,
    );
  }

  void onTapStartStop() {
    Get.toNamed(
      AppRoutes.startOneScreen,
    );
  }

  void onTapReceipt() {
    Get.toNamed(
      AppRoutes.summaryScreen,
    );
  }

  void onTapHistory() {
    Get.toNamed(
      AppRoutes.historyEmptyScreen,
    );
  }
// Add any other necessary methods and logic here...


  }

// ... rest of your controller

