import 'controller/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class StartScreen extends GetWidget<StartController> {
  const StartScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.deepPurpleA700,
                      theme.colorScheme.onPrimary.withOpacity(0)
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        margin: EdgeInsets.only(right: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 31.h, vertical: 71.v),
                        decoration: AppDecoration.gradientGrayToGray,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 51.v),
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
                                                    color: theme
                                                        .colorScheme.onPrimary
                                                        .withOpacity(1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            114.h)))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImage4RemovebgPreview,
                                            height: 320.v,
                                            width: 300.h,
                                            alignment: Alignment.center)
                                      ])),
                              SizedBox(height: 63.v),
                              SizedBox(
                                  width: 293.h,
                                  child: Text("msg_park_your_vehichle".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .headlineLargeBlack90002)),
                              SizedBox(height: 30.v),
                              CustomElevatedButton(
                                  text: "lbl_get_started".tr,
                                  margin:
                                      EdgeInsets.only(left: 23.h, right: 21.h),
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  onPressed: () {
                                    onTapGetStarted();
                                  })
                            ]))))));
  }

  /// Navigates to the signScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.signScreen,
    );
  }
}
