import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'controller/stop_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class StopScreen extends GetWidget<StopController> {
  const StopScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final StopController controller = Get.find();

    // Start the timer when the page is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!controller.isTimerRunning) {
        // You might need to add this property in your controller
        controller.startTimer();
      }
    });

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.7, 0.95),
              colors: [
                appTheme.gray60002,
                appTheme.gray60002.withOpacity(0),
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 63.v,
                ),
                decoration: AppDecoration.outlineBlack,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 312.v,
                      width: 248.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 226.v,
                              width: 229.h,
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                borderRadius: BorderRadius.circular(
                                  114.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage4RemovebgPreview,
                            height: 312.v,
                            width: 248.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.v),
                    _buildClientTestimonials(),
                    SizedBox(height: 17.v),
                    _buildRecentOrders(),
                    SizedBox(height: 49.v),
                    CustomElevatedButton(
                      height: 43.v,
                      width: 137.h,
                      text: "lbl_stop".tr,
                      buttonStyle: CustomButtonStyles.fillRedAE,
                      buttonTextStyle:
                          CustomTextStyles.bodyLargeMontserratOnPrimary,
                      onPressed: () {
                        _showStopConfirmationDialog(context);
                      },
                    ),
                    SizedBox(height: 25.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showStopConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Stop"),
          content: Text(
            "Do you want to stop and reset the timer?",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                final user = FirebaseAuth.instance.currentUser;
                Map<String, dynamic> dataMobil = {
                  "uid": user?.uid,
                  "durasi": controller.timerLabel.value,
                  "total": controller.amount.value,
                };
                insertData("tiket_user", dataMobil);
                controller.stopTimer(); // Stop the timer
                controller
                    .resetTimer(); // Reset the timer. Replace with your actual reset method
                print("Timer stopped");

                print(controller.amount.value);
                Navigator.of(context).pop(); // Dismiss the dialog
                Get.toNamed(
                    AppRoutes.summaryScreen); // Navigate to the summary screen
              },
            ),
          ],
        );
      },
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL45,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTimer,
            height: 60.adaptSize,
            width: 60.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 18.v,
              bottom: 10.v,
            ),
            child: Obx(
              () => Text(
                controller.timerLabel.value,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineSmallCandal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return SizedBox(
      height: 50.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.center, // Adjusted to center
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 80.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL45,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 43.v,
                width: 32.h,
              ),
            ),
          ),
          // Align widget removed, directly placing Text in Stack
          Obx(() => Text(
                "Rp ${controller.amount.value}",
                // Update text to show the incremented amount
                style: CustomTextStyles.headlineSmallCandal,
              )),
        ],
      ),
    );
  }
}

Future<void> insertData(
    String collectionPath, Map<String, dynamic> data) async {
  final firestore = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance.currentUser;

  await firestore.collection(collectionPath).doc(user?.uid).update(data);
}
