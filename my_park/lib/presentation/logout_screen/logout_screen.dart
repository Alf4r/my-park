import 'controller/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class LogoutScreen extends GetWidget<LogoutController> {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 128.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 21.v),
                              Container(
                                  margin: EdgeInsets.only(right: 1.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 56.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder39),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 8.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup,
                                            height: 192.v,
                                            width: 186.h),
                                        SizedBox(height: 38.v),
                                        Text("msg_log_out_successful".tr,
                                            style: CustomTextStyles
                                                .headlineSmallUrbanistTealA700),
                                        SizedBox(height: 23.v),
                                        Text("msg_thanks_for_using".tr,
                                            style: CustomTextStyles
                                                .bodyLargeUrbanistGray90003),
                                        SizedBox(height: 33.v),
                                        CustomElevatedButton(
                                            height: 65.v,
                                            text: "lbl_ok".tr,
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientIndigoAToIndigoADecoration,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumUrbanistOnPrimary,
                                            onPressed: () {
                                              onTapOK();
                                            })
                                      ]))
                            ]))))));
  }

  /// Navigates to the startScreen when the action is triggered.
  onTapOK() {
    Get.toNamed(
      AppRoutes.startScreen,
    );
  }
}
