import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'controller/profile_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_image.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';
import 'package:hassan_s_application15/widgets/custom_floating_text_field.dart';

class ProfileSettingsScreen extends GetWidget<ProfileSettingsController> {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: SizedBox(
            width: 375.h,
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 19.h, right: 19.h, bottom: 5.v),
                      child: Column(
                        children: [
                          Container(
                              height: 203.adaptSize,
                              width: 203.adaptSize,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup30),
                                      fit: BoxFit.cover)),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgContrastErrorcontainer,
                                  height: 72.adaptSize,
                                  width: 72.adaptSize,
                                  alignment: Alignment.center)),
                          SizedBox(height: 69.v),
                          _buildForm2FillEmail(),
                          SizedBox(height: 18.v),
                          _buildForm2FillPhoneNumber(),
                          SizedBox(height: 18.v),
                          _buildForm2FillPassword()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: _buildLogoutButton(context, theme)),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 88.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 20.h, top: 54.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "msg_profile_settings".tr,
            margin: EdgeInsets.only(top: 56.v, bottom: 9.v)),
        styleType: Style.bgFill);
  }

  Widget _buildForm2FillEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .where('uid', isEqualTo: user?.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          return Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Text("lbl_email".tr.toUpperCase(),
                    style: theme.textTheme.bodySmall),
                SizedBox(height: 14.v),
                Text(snapshot.data!.docs[0]['email'],
                    style: theme.textTheme.bodyLarge),
                SizedBox(height: 6.v),
                Divider()
              ],
            ),
          );
        });
  }

  Widget _buildForm2FillPhoneNumber() {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('mobil')
            .where('uid', isEqualTo: FirebaseAuth.instance.currentUser?.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.data!.docs.isEmpty) {
            return Container(
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Text("lbl_phone_number".tr.toUpperCase(),
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 14.v),
                  Text("No Plate Number", style: theme.textTheme.bodyLarge),
                  SizedBox(height: 6.v),
                  Divider()
                ],
              ),
            );
            
          }
          return Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Text("lbl_phone_number".tr.toUpperCase(),
                    style: theme.textTheme.bodySmall),
                SizedBox(height: 14.v),
                Text(snapshot.data!.docs[0]['plat'],
                    style: theme.textTheme.bodyLarge),
                SizedBox(height: 6.v),
                Divider()
              ],
            ),
          );
        });
  }

  Widget _buildForm2FillPassword() {
    return GestureDetector(
      onTap: () {
        onTapForm2FillPassword();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Text("lbl_password2".tr.toUpperCase(),
                style: theme.textTheme.bodySmall),
            SizedBox(height: 14.v),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg2".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to the ChangePasswordScreen
                            Get.toNamed(
                              AppRoutes.changePasswordScreen,
                            );
                          },
                          child: Text(
                            "Change Password".tr,
                            style: CustomTextStyles.bodyLargePrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 7.v),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context, ThemeData theme) {
    return CustomElevatedButton(
      text: "lbl_log_out".tr.toUpperCase(),
      margin: EdgeInsets.only(left: 21.h, right: 19.h, bottom: 29.v),
      buttonTextStyle: theme.textTheme.bodyMedium!,
      onPressed: () {
        _onTapLogout(context);
      },
    );
  }

  // Define the onTapLogout method
  void _onTapLogout(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 24.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text("lbl_logout2".tr,
                    style: CustomTextStyles.titleMediumUrbanist),
                SizedBox(height: 46.v),
                Text("msg_are_you_sure_want".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeUrbanist_1),
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          onPressed: () => Navigator.of(dialogContext).pop(),
                          height: 53.v,
                          text: "lbl_no".tr,
                          margin: EdgeInsets.only(right: 4.h),
                          buttonStyle: CustomButtonStyles.fillGrayTL26,
                          buttonTextStyle: CustomTextStyles.titleMediumUrbanist,
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          onPressed: () {
                            Get.toNamed(
                              AppRoutes.logoutScreen,
                            );
                            // Close the dialog
                            // Add additional logout logic here, if necessary
                            // For example, navigate to the sign-in screen
                          },
                          height: 53.v,
                          text: "lbl_yes_log_out".tr,
                          margin: EdgeInsets.only(left: 4.h),
                          buttonStyle: CustomButtonStyles.fillGrayTL26,
                          buttonTextStyle: CustomTextStyles.titleMediumUrbanist,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Define the onTapArrowLeft method
  void onTapArrowLeft() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  // Define the onTapForm2FillPassword method
  void onTapForm2FillPassword() {
    // Implement navigation logic for password field
  }

  // Define the onTapLogout method
  void onTapLogout() {
    // Implement logout logic
  }
}
