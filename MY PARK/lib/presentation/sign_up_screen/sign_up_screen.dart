import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_title_image.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';
import 'package:hassan_s_application15/widgets/custom_text_form_field.dart';
import 'package:hassan_s_application15/domain/googleauth/google_auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  String fullName = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    fullName = controller.fullName;
    email = controller.email;
    password = controller.password;
    print("Full Name: "+fullName);
    print("Email: "+email);

    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 19.h, right: 19.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text("lbl_create_account".tr,
                                      style: theme.textTheme.displaySmall))),
                          SizedBox(height: 2.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 48.v,
                                  width: 252.h,
                                  margin: EdgeInsets.only(left: 32.h),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: 252.h,
                                                child: Text(
                                                    "msg_enter_your_name".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyLargeGray90002
                                                        .copyWith(
                                                            height: 1.50)))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtAlreadyHaveAccount();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 17.h,
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "msg_already_have_account"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLargePrimaryContainer_1))))
                                      ]))),
                          SizedBox(height: 83.v),
                          _buildForm2Fill(),
                          SizedBox(height: 9.v),
                          _buildForm2Fill1(),
                          SizedBox(height: 9.v),
                          _buildForm2Fill2(),
                          SizedBox(height: 24.v),
                          _buildSignUpButton(),
                          SizedBox(height: 20.v),
                          Container(
                              width: 251.h,
                              margin: EdgeInsets.only(left: 43.h, right: 41.h),
                              child: Text("msg_by_signing_up_you".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLargeGray90002
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Opacity(
                                  opacity: 0.64,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 154.h),
                                      child: Text("lbl_or".tr,
                                          style: CustomTextStyles
                                              .bodyLargeBlack900)))),
                          SizedBox(height: 18.v),
                          _buildConnectWithGoogle()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 10.v,
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgBg));
  }

  /// Section Widget
  Widget _buildFullNameField() {
    return CustomTextFormField(
        controller: controller.fullNameFieldController,
        hintText: "Name".tr,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,);
  }

  /// Section Widget
  Widget _buildForm2Fill() {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_full_name".tr.toUpperCase(),
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 15.v),
              _buildFullNameField()
            ]));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: controller.emailFieldController,
        hintText: "Email".tr,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false);
  }

  /// Section Widget
  Widget _buildForm2Fill1() {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_email_address".tr.toUpperCase(),
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 15.v),
              _buildEmailField()
            ]));
  }

  /// Section Widget
  Widget _buildPasswordlField() {
    return CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "insert password".tr,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        obscureText: true,
        filled: false);
  }

  /// Section Widget
  Widget _buildForm2Fill2() {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_password".tr.toUpperCase(),
                  style: theme.textTheme.bodySmall),
              SizedBox(height: 15.v),
              _buildPasswordlField()
            ]));
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr.toUpperCase(),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: CustomTextStyles.bodyMediumGray5004,
        onPressed: () async {
          onTapSignUpButton();
            try {
              final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
              print("Masuk btn");
              _firestore.collection('users').doc(newUser.user?.uid).set({'fullName': fullName});
            } catch (e) {
              print(e);
            }

        });
  }

  /// Section Widget
  Widget _buildConnectWithGoogle() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_connect_with_google".tr.toUpperCase(),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFloatingicon,
                height: 28.adaptSize,
                width: 28.adaptSize)),
        buttonStyle: CustomButtonStyles.fillBlueA,
        buttonTextStyle: CustomTextStyles.labelLargeYuGothicUIOnPrimary,
        onPressed: () {
          onTapConnectWithGoogle();
        });
  }

  /// Common widget
  Widget _buildPasswordField({
    required String passwordText,
    required String checkmarkImage,

  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(passwordText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: checkmarkImage, height: 24.adaptSize, width: 24.adaptSize)
    ]);
  }

  /// Navigates to the signScreen when the action is triggered.
  onTapTxtAlreadyHaveAccount() {
    Get.toNamed(
      AppRoutes.signScreen,
    );
  }

  /// Navigates to the signScreen when the action is triggered.
  onTapSignUpButton() {
    Get.toNamed(
      AppRoutes.signScreen,
    );
  }

  onTapConnectWithGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
