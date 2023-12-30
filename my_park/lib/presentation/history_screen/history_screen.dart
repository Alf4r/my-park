import 'controller/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_subtitle.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key}) : super(key: key);

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
                      theme.colorScheme.onPrimary.withOpacity(1),
                      theme.colorScheme.onPrimary.withOpacity(0)
                    ])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: _buildScrollView()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgIconArrowArrowSquareLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 18.v),
            onTap: () {
              onTapIconButton();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_history2".tr));
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Container(
        margin: EdgeInsets.only(left: 9.h, right: 9.h, bottom: 5.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
              decoration: AppDecoration.outlineBlack90004
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 39.v,
                    width: 38.h,
                    margin: EdgeInsets.symmetric(vertical: 4.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_paris_van_java".tr,
                              style: CustomTextStyles
                                  .titleMediumUrbanistGray90003),
                          SizedBox(height: 11.v),
                          Text("lbl_26_dec_2023".tr,
                              style:
                                  CustomTextStyles.bodySmallUrbanistGray70001)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 11.v))
              ])),
          SizedBox(height: 7.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
              decoration: AppDecoration.outlineBlack90004
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 39.v,
                    width: 38.h,
                    margin: EdgeInsets.symmetric(vertical: 4.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 3.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_grand_hyatt".tr,
                              style: CustomTextStyles
                                  .titleMediumUrbanistGray90003),
                          SizedBox(height: 9.v),
                          Text("lbl_26_dec_2023".tr,
                              style:
                                  CustomTextStyles.bodySmallUrbanistGray70001)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 11.v))
              ])),
          SizedBox(height: 7.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
              decoration: AppDecoration.outlineBlack90004
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 39.v,
                    width: 38.h,
                    margin: EdgeInsets.symmetric(vertical: 4.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 1.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_plaza_indonesia".tr,
                              style: CustomTextStyles
                                  .titleMediumUrbanistGray90003),
                          SizedBox(height: 12.v),
                          Text("lbl_26_dec_2023".tr,
                              style:
                                  CustomTextStyles.bodySmallUrbanistGray70001)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 11.v))
              ]))
        ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
