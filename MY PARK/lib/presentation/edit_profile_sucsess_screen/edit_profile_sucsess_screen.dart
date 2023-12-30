import 'controller/edit_profile_sucsess_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

class EditProfileSucsessScreen extends GetWidget<EditProfileSucsessController> {
  const EditProfileSucsessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 47.h, vertical: 189.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Container(
                          height: 95.v,
                          width: 114.h,
                          margin: EdgeInsets.only(left: 66.h),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroup758,
                                    height: 94.v,
                                    width: 114.h,
                                    alignment: Alignment.center),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconlyRegularBoldLock,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(right: 33.h))
                              ])),
                      SizedBox(height: 16.v),
                      SizedBox(
                          height: 40.v,
                          width: 265.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_congratulations".tr,
                                    style: theme.textTheme.headlineLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_congratulations".tr,
                                    style: theme.textTheme.headlineLarge))
                          ])),
                      SizedBox(height: 3.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 19.v,
                              width: 223.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("msg_your_account_is".tr,
                                        style: CustomTextStyles
                                            .bodyMediumMontserratBlack9000415)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("msg_your_account_is".tr,
                                        style: CustomTextStyles
                                            .bodyMediumMontserratBlack9000415))
                              ]))),
                      SizedBox(height: 85.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 47.v,
                              width: 147.h,
                              margin: EdgeInsets.only(right: 51.h),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 12.v),
                                        child: Text("lbl_go_to_home_page".tr,
                                            style: CustomTextStyles
                                                .bodyMediumMontserratBlack90004))),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapView();
                                        },
                                        child: Container(
                                            height: 47.v,
                                            width: 147.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.green500,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(24.h),
                                                    topRight:
                                                        Radius.circular(23.h),
                                                    bottomLeft:
                                                        Radius.circular(24.h),
                                                    bottomRight:
                                                        Radius.circular(23.h)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: appTheme.black90004
                                                          .withOpacity(0.25),
                                                      spreadRadius: 2.h,
                                                      blurRadius: 2.h,
                                                      offset: Offset(0, 4))
                                                ]))))
                              ])))
                    ]))));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
