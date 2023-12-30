import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/change_password_controller.dart';
import 'package:hassan_s_application15/core/app_export.dart';
// ... other imports ...

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildChangePasswordForm(controller),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildChangePasswordButton(),
      ),
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
            text: "Change Password".tr,
            margin: EdgeInsets.only(top: 56.v, bottom: 9.v)),
        styleType: Style.bgFill);
  }

  Widget _buildChangePasswordForm(ChangePasswordController controller) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 5.v),
      child: Column(children: [
        _buildPasswordField("Old Password", controller.oldPasswordController),
        SizedBox(height: 18.v),
        _buildPasswordField("New Password", controller.newPasswordController),
        SizedBox(height: 18.v),
        _buildPasswordField("Confirm New Password", controller.confirmPasswordController),
      ]),
    );
  }

  Widget _buildPasswordField(String label, TextEditingController controller) {
    return Container(
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(label, style: theme.textTheme.bodySmall),
          ),
          TextField(
            controller: controller,
            obscureText: true,
            decoration: InputDecoration(
              // You can add additional styling and icon here
            ),
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 11.v),
          Divider(),
        ],
      ),
    );
  }

  Widget _buildChangePasswordButton() {
    return CustomElevatedButton(
      text: "lbl_change_password".tr.toUpperCase(),
      margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 29.v),
      buttonTextStyle: theme.textTheme.bodyMedium!,
      onPressed: () {
        if (_validateForm()) {
          onTapChangePasswordButton();
        }
      },
    );
  }

  bool _validateForm() {
    // Add form validation logic here
    return true; // Replace with actual validation logic
  }

  void onTapArrowLeft() {
    Get.back();
  }

  void onTapChangePasswordButton() {
    // Implement the logic to change the password
    // Validate and process the new password
    // Navigate to success screen or show an error message
    Get.toNamed(AppRoutes.editProfileSucsessScreen);
  }
}
