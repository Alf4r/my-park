import 'controller/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_title.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

class SummaryScreen extends GetWidget<SummaryController> {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      _buildThirteen(),
                      SizedBox(height: 80.v),
                      _buildFour()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed(
              AppRoutes.homePageScreen,
            );// Handle register action
          },
          // Handle back acc,
        ),
        title: AppbarTitle(
            text: "Recipt".tr,
            margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildThirteen() {
    return Container(
        margin: EdgeInsets.only(left: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
        decoration: AppDecoration.fillGray5002,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 5.v),
          SizedBox(
              width: 309.h,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_parking_area".tr,
                        style: CustomTextStyles.titleLargeCairo),
                    TextSpan(
                        text: "lbl_grand_hyatt2".tr,
                        style: CustomTextStyles.titleLargeCairo22),
                    TextSpan(
                        text: "lbl_vehicle".tr,
                        style: CustomTextStyles.titleLargeCairo),
                    TextSpan(
                        text: "msg_avanza_b_3568_sc_date".tr,
                        style: CustomTextStyles.titleLargeCairo22)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildFour() {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 54.v),
        decoration: AppDecoration.fillGray5002,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 7.v),
          SizedBox(
              width: 304.h,
              child: Text("msg_total".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
