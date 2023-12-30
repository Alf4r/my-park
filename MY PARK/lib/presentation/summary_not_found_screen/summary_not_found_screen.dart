import 'controller/summary_not_found_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_title.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

class SummaryNotFoundScreen extends GetWidget<SummaryNotFoundController> {
  const SummaryNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 46.h, top: 124.v, right: 46.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.img26,
                      height: 222.v,
                      width: 267.h),
                  SizedBox(height: 67.v),
                  Text("lbl_empty".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallUrbanistGray90003),
                  SizedBox(height: 17.v),
                  Text("msg_you_have_no_transaction".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeUrbanistGray9000318),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 17.h, top: 10.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_review_summary".tr,
            margin: EdgeInsets.only(left: 15.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
