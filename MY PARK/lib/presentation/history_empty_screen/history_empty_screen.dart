import 'controller/history_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_subtitle.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HistoryEmptyScreen extends GetWidget<HistoryEmptyController> {
  const HistoryEmptyScreen({Key? key})
      : super(
          key: key,
        );

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
                theme.colorScheme.onPrimary.withOpacity(0),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 46.h,
              top: 130.v,
              right: 46.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img26,
                  height: 250.v,
                  width: 267.h,
                ),
                SizedBox(height: 110.v),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align to the start, which is equivalent to left in LTR languages
                    children: [
                      Text(
                        "lbl_empty".tr,
                        style: CustomTextStyles.headlineSmallUrbanistGray90003,
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "msg_you_have_no_history".tr,
                        style: CustomTextStyles.bodyLargeUrbanistGray9000318,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                // ... Other children if any
              ],
            ),
          ),
        ),
      ),
    );
  }


  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 50.h,

      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.toNamed(
            AppRoutes.homePageScreen,
          );// Handle register action
        },
        // Handle back acc,
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_history2".tr,

      ),
    );
  }
}
