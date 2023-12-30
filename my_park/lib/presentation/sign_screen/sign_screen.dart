import 'package:firebase_auth/firebase_auth.dart';

import 'controller/sign_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';
import 'package:hassan_s_application15/widgets/custom_text_form_field.dart';

class SignScreen extends GetWidget<SignController> {
  SignScreen({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    email = controller.email;
    password = controller.password;

    print("Email: " + email);
    print("Password: " + password);

    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0.12),
                        end: Alignment(0.5, 1.3),
                        colors: [appTheme.gray800, appTheme.gray50000])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 144.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_my_parking".tr,
                                  style:
                                      CustomTextStyles.headlineLargeOnPrimary)),
                          Spacer(flex: 52),
                          _buildMobileStack(),
                          SizedBox(height: 27.v),
                          _buildPasswordStack(),
                          SizedBox(height: 40.v),
                          Opacity(
                              opacity: 0.64,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgetPassword();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 121.h),
                                      child: Text("msg_forget_password".tr,
                                          style: CustomTextStyles
                                              .bodySmallYellowA40094)))),
                          SizedBox(height: 13.v),
                          CustomElevatedButton(
                              height: 50.v,
                              text: "lbl_sign_in".tr.toUpperCase(),
                              margin: EdgeInsets.only(left: 17.h, right: 19.h),
                              buttonStyle: CustomButtonStyles.fillGrayTL25,
                              buttonTextStyle: CustomTextStyles.bodyMediumInter,
                              onPressed: () async {
                                try {
                                  print("Masuk1");
                                  print(controller.emailFieldController.text);
                                  final user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: controller
                                              .emailFieldController.text,
                                          password: controller
                                              .passwordFieldController.text);
                                  print("masuk2");
                                  if (user != null) {
                                    print("Masuk3");
                                    onTapSignIn();
                                  }
                                } catch (e) {
                                  print(e);
                                }
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 8.v),
                          GestureDetector(
                              onTap: () {
                                onTapCreateAccount();
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 52.h),
                                  child: Row(children: [
                                    Opacity(
                                        opacity: 0.64,
                                        child: Text("msg_don_t_have_account".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900_1)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 19.h),
                                        child: Text("msg_create_new_account".tr,
                                            style: CustomTextStyles
                                                .bodySmallYellowA400))
                                  ]))),
                          Spacer(flex: 47)
                        ])))));
  }

  /// Section Widget
  Widget _buildMobileStack() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 6.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMobile,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.center)
              ])),
          Container(
              height: 39.v,
              width: 294.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomTextFormField(
                    width: 294.h,
                    controller: controller.emailFieldController,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                    fillColor: appTheme.blueGray100),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 8.v),
                        child: Text("lbl_email".tr,
                            style: CustomTextStyles
                                .bodyMediumMontserratBluegray900)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPasswordStack() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 6.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMobile,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.center)
              ])),
          Container(
              height: 39.v,
              width: 294.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(alignment: Alignment.topLeft, children: [
                CustomTextFormField(
                    width: 294.h,
                    controller: controller.passwordFieldController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                    fillColor: appTheme.blueGray100),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 8.v),
                        child: Text("lbl_password".tr,
                            style: CustomTextStyles
                                .bodyMediumMontserratBluegray900)))
              ]))
        ]));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgetPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapSignIn() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapCreateAccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
