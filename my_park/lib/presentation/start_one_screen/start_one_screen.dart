import 'controller/start_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class StartOneScreen extends GetWidget<StartOneController> {
  const StartOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.onError,
                      appTheme.gray60000
                    ])),
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 17.h, right: 14.h, bottom: 5.v),
                        decoration: AppDecoration.outlineBlack,
                        child: Column(children: [
                          SizedBox(
                              height: 312.v,
                              width: 248.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 226.v,
                                        width: 229.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            borderRadius:
                                                BorderRadius.circular(114.h)))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgImage4RemovebgPreview,
                                    height: 312.v,
                                    width: 248.h,
                                    alignment: Alignment.center)
                              ])),
                          SizedBox(height: 70.v),
                          _buildStartColumn()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.toNamed(
            AppRoutes.homePageScreen,
          ); // Navigate back
        },
      ),
      backgroundColor: Colors.transparent, // Makes AppBar background transparent
      elevation: 0, // Removes shadow
      // Other AppBar properties...
    );
  }


  /// Section Widget
  Widget _buildStartColumn() {
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL45),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgTimer,
                height: 60.adaptSize,
                width: 60.adaptSize,
                margin: EdgeInsets.only(top: 1.v)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 18.v, bottom: 10.v),
                child: Text("lbl_00_00_00".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineSmallCandal))
          ])),
      SizedBox(height: 17.v),
      SizedBox(
          height: 89.v,
          width: 329.h,
          child: Stack(alignment: Alignment.bottomRight, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 33.h, vertical: 23.v),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL45),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 43.v,
                        width: 32.h))),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 33.h, bottom: 22.v),
                    ))
          ])),
      SizedBox(height: 49.v),
      CustomElevatedButton(
          height: 43.v,
          width: 137.h,
          text: "lbl_start".tr,
          buttonStyle: CustomButtonStyles.fillGrayTL22,
          buttonTextStyle: CustomTextStyles.bodyLargeMontserratOnPrimary,
          onPressed: () {
            onTapStart();
          })
    ]);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapArrowLeft() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the stopScreen when the action is triggered.
  onTapStart() {
    Get.toNamed(
      AppRoutes.stopScreen,
    );
  }
}
