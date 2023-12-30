import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/core/utils/validation_functions.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_image.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';
import 'package:hassan_s_application15/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: _buildScrollView()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 375.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIcon24Back,
            margin: EdgeInsets.fromLTRB(21.h, 16.v, 330.h, 16.v),
            onTap: () {
              onTapIconBack();
            }));
  }

  /// Section Widget
  Widget _buildForgotPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h, right: 15.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(top: 19.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgContrastBlack90004,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      alignment: Alignment.center),
                  CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 9.v))
                ])),
            Container(
                height: 48.v,
                width: 269.h,
                margin: EdgeInsets.only(left: 20.h),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("lbl_email".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer)),
                            CustomTextFormField(
                                controller: controller.emailController,
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillBlueGrayTL10,
                                fillColor: appTheme.blueGray100)
                          ])),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("msg_sajin_tamang_figma".tr,
                              style: theme.textTheme.bodyLarge)))
                ]))
          ])),
      SizedBox(height: 10.v),
      Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 40.v,
                width: 35.h,
                margin: EdgeInsets.only(top: 11.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgLocationOnprimarycontainer,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      alignment: Alignment.topCenter)
                ])),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 18.h, bottom: 3.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("msg_confirm_password".tr,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainer)),
                          CustomTextFormField(
                              controller: controller.confirmpasswordController,
                              hintText: "lbl".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: true,
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlueGrayTL10,
                              fillColor: appTheme.blueGray100)
                        ])))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 5.v),
        child: Column(children: [
          Text("lbl_forgot_password".tr, style: theme.textTheme.displaySmall),
          Container(
              width: 242.h,
              margin: EdgeInsets.only(left: 49.h, right: 45.h),
              child: Text("msg_enter_your_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeGray90002
                      .copyWith(height: 1.50))),
          SizedBox(height: 52.v),
          _buildForgotPassword(),
          SizedBox(height: 59.v),
          CustomElevatedButton(
              text: "lbl_reset_password".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.fillBlack,
              buttonTextStyle: theme.textTheme.bodyMedium!,
              onPressed: () {
                onTapResetPassword();
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapIconBack() {
    Get.back();
  }

  /// Navigates to the signScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.signScreen,
    );
  }
}
