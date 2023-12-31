import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/hasil_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class HasilOneScreen extends GetWidget<HasilOneController> {
  const HasilOneScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(bottom: 38.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.onPrimary.withOpacity(1),
                      theme.colorScheme.onPrimary.withOpacity(0)
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(44.h),
                    child: Column(children: [
                      SizedBox(height: 43.v),
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
                                StreamBuilder<DocumentSnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection('parkir')
                                        .doc('cYS4UB3hTV8KraKMNxPi')
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return Center(
                                            child: CircularProgressIndicator());
                                      }
                                      Map<String, dynamic> data = snapshot.data!
                                          .data() as Map<String, dynamic>;
                                      return Container(
                                          width: 26.h,
                                          margin: EdgeInsets.only(left: 81.h),
                                          child: Text("${data['ketersediaan']}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme.headlineSmall));
                                    }),
                              ])),
                      SizedBox(height: 70.v),
                      Text("msg_reservation_success".tr,
                          style: CustomTextStyles.headlineSmallUrbanistTealA700)
                    ]))),
            bottomNavigationBar: _buildBackButton()));
  }

  /// Section Widget
  Widget _buildBackButton() {
    return CustomElevatedButton(
        height: 38.v,
        text: "lbl_back2".tr,
        margin: EdgeInsets.only(left: 45.h, right: 53.h, bottom: 42.v),
        buttonStyle: CustomButtonStyles.fillOnErrorContainer,
        buttonTextStyle: CustomTextStyles.headlineSmallMontserratOnPrimary,
        onPressed: () {
          onTapBackButton();
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapBackButton() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
