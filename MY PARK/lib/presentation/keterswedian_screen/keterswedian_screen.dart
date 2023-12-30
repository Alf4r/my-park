import 'controller/keterswedian_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class KeterswedianScreen extends GetWidget<KeterswedianController> {
  const KeterswedianScreen({Key? key}) : super(key: key);

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
                                    child: Text("lbl_15".tr,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          width: 127.h,
                          text: "lbl_ok".tr,
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallOnPrimary,
                          onPressed: () {
                            onTapOK();
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the hasilOneScreen when the action is triggered.
  onTapOK() {
    Get.toNamed(
      AppRoutes.hasilOneScreen,
    );
  }
}
