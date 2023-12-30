import 'controller/maps_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class MapsScreen extends GetWidget<MapsController> {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(bottom: 38.v),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Location_map_Jakarta.png"), // Replace with your actual image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 38.h, vertical: 113.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLinkedin,
                                              height: 39.v,
                                              width: 38.h,
                                              margin:
                                                  EdgeInsets.only(left: 23.h),
                                              onTap: () {
                                                onTapImgLinkedin();
                                              }),
                                          SizedBox(height: 6.v),
                                          Text("lbl_plaza_indonesia".tr,
                                              style: CustomTextStyles
                                                  .labelLargeUrbanist)
                                        ]),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVuesaxBoldLocation,
                                              height: 39.v,
                                              width: 38.h,
                                              onTap: () {
                                                onTapImgVuesaxBoldLocation();
                                              }),
                                          Text("lbl_paris_van_java".tr,
                                              style: CustomTextStyles
                                                  .labelLargeUrbanist)
                                        ]))
                                  ])),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.h, right: 11.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 4.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector,
                                                      height: 33.v,
                                                      width: 28.h,
                                                      margin: EdgeInsets.only(
                                                          left: 21.h),
                                                      onTap: () {
                                                        onTapImgVector();
                                                      }),
                                                  SizedBox(height: 7.v),
                                                  Text("lbl_grand_indonesia".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeUrbanist)
                                                ])),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLinkedin,
                                                  height: 39.v,
                                                  width: 38.h,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h),
                                                  onTap: () {
                                                    onTapImgLinkedin1();
                                                  }),
                                              SizedBox(height: 4.v),
                                              Text("lbl_grand_hyatt".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeUrbanist)
                                            ])
                                      ]))),
                          SizedBox(height: 83.v),
                          CustomImageView(
                              imagePath: ImageConstant
                                  .imgVuesaxBoldLocationBlueGray800,
                              height: 39.v,
                              width: 38.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 71.h),
                              onTap: () {
                                onTapImgVuesaxBoldLocation1();
                              }),
                          SizedBox(height: 2.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 19.h),
                                  child: Text("msg_cilandak_town_squer".tr,
                                      style: CustomTextStyles
                                          .labelLargeUrbanist))),
                          SizedBox(height: 48.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 39.v,
                              width: 38.h,
                              margin: EdgeInsets.only(left: 69.h),
                              onTap: () {
                                onTapImgVuesaxBoldLocation2();
                              }),
                          SizedBox(height: 1.v),
                          Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("msg_pondok_indah_mall".tr,
                                  style: CustomTextStyles.labelLargeUrbanist))
                        ]))),
            bottomNavigationBar: _buildBackButton()));
  }

  /// Section Widget
  Widget _buildBackButton() {
    return CustomElevatedButton(
        height: 38.v,
        text: "lbl_back".tr,
        margin: EdgeInsets.only(left: 50.h, right: 48.h, bottom: 55.v),
        buttonStyle: CustomButtonStyles.fillOnErrorContainer,
        buttonTextStyle: CustomTextStyles.bodySmallMontserratOnPrimary,
        onPressed: () {
          onTapBackButton();
        });
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgLinkedin() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgVuesaxBoldLocation() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgVector() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgLinkedin1() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgVuesaxBoldLocation1() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the keterswedianScreen when the action is triggered.
  onTapImgVuesaxBoldLocation2() {
    Get.toNamed(
      AppRoutes.keterswedianScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapBackButton() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
