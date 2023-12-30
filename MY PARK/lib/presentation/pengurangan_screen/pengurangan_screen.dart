import 'controller/pengurangan_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

class PenguranganScreen extends GetWidget<PenguranganController> {
  const PenguranganScreen({Key? key}) : super(key: key);

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
                      appTheme.gray40001,
                      theme.colorScheme.onPrimary.withOpacity(0)
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 44.h, top: 88.v, right: 44.h),
                    child: Column(children: [
                      SizedBox(
                          height: 312.v,
                          width: 248.h,
                          child: Stack(alignment: Alignment.center, children: [
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
                      SizedBox(height: 11.v),
                      Container(
                          width: 272.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 37.h, vertical: 19.v),
                          decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder50),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 17.v),
                                Container(
                                    width: 188.h,
                                    margin: EdgeInsets.only(right: 7.h),
                                    child: Text("msg_parking_availability".tr,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineSmall)),
                                SizedBox(height: 18.v),
                                Container(
                                    width: 26.h,
                                    margin: EdgeInsets.only(left: 81.h),
                                    child: Text("lbl_14".tr,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      SizedBox(height: 15.v),
                      SizedBox(
                          height: 47.v,
                          width: 127.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 47.v,
                                    width: 127.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.green500,
                                        borderRadius:
                                            BorderRadius.circular(23.h),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.black90004
                                                  .withOpacity(0.25),
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: Offset(0, 4))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtConfirm();
                                    },
                                    child: SizedBox(
                                        width: 80.h,
                                        child: Text("lbl_confirm".tr,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .headlineSmallOnPrimary))))
                          ])),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the hasilScreen when the action is triggered.
  onTapTxtConfirm() {
    Get.toNamed(
      AppRoutes.hasilScreen,
    );
  }
}
