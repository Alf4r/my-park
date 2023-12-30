import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  Future<void> onTapStartStop() async {
    // Mendapatkan instance dari FirebaseFirestore
    final firestore = FirebaseFirestore.instance;

    // Mendapatkan UID pengguna yang sedang aktif
    final user = FirebaseAuth.instance.currentUser;

    // Mendapatkan koleksi data
    CollectionReference collection = firestore.collection("mobil");

    // Mendapatkan data dari koleksi
    QuerySnapshot querySnapshot =
        await collection.where("uid", isEqualTo: user?.uid).get();

    // Mengecek apakah data ada
    if (querySnapshot.docs.isNotEmpty) {
      // Navigasi ke layar summary
      Get.toNamed(AppRoutes.startOneScreen);
    } else {
      // Tampilkan dialog menu belum ada plat nomor
      Get.defaultDialog(
        title: "Perhatian",
        middleText:
            "Anda belum memiliki plat nomor, silahkan registrasi terlebih dahulu",
        textConfirm: "OK".tr,
        confirmTextColor: Colors.black,
        middleTextStyle: TextStyle(color: Colors.black),
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  Future<void> onTapReceipt() async {
    // Mendapatkan instance dari FirebaseFirestore
    final firestore = FirebaseFirestore.instance;

    // Mendapatkan UID pengguna yang sedang aktif
    final user = FirebaseAuth.instance.currentUser;

    // Mendapatkan koleksi data
    CollectionReference collection = firestore.collection("mobil");

    // Mendapatkan data dari koleksi
    QuerySnapshot querySnapshot =
        await collection.where("uid", isEqualTo: user?.uid).get();

    // Mengecek apakah data ada
    if (querySnapshot.docs.isNotEmpty) {
      // Navigasi ke layar summary
      Get.toNamed(AppRoutes.summaryScreen);
    } else {
      // Tampilkan dialog menu belum ada plat nomor
      Get.defaultDialog(
        title: "Perhatian",
        middleText:
            "Anda belum memiliki plat nomor, silahkan registrasi terlebih dahulu",
        textConfirm: "OK".tr,
        confirmTextColor: Colors.black,
        middleTextStyle: TextStyle(color: Colors.black),
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  void onTapHistory() {
    Get.toNamed(
      AppRoutes.historyEmptyScreen,
    );
  }
// Add any other necessary methods and logic here...
}

// ... rest of your controller

