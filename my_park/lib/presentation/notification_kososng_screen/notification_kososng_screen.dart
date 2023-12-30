import 'controller/notification_kososng_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_icon_button.dart';

class NotificationKososngScreen
    extends GetWidget<NotificationKososngController> {
  const NotificationKososngScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 46.h, top: 94.v, right: 46.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.img26,
                          height: 222.v,
                          width: 267.h),
                      SizedBox(height: 54.v),
                      Padding(
                          padding: EdgeInsets.only(left: 51.h),
                          child: Text("msg_no_older_notification".tr,
                              style: CustomTextStyles
                                  .bodyMediumMontserratBlack90004)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: Container(
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.fromLTRB(15.h, 13.v, 315.h, 13.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapBtnArrowLeft();
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftOnprimary,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center)
            ])));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
