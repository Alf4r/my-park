import '../konfirmasi_logout_screen/widgets/form2fill_item_widget.dart';
import 'controller/konfirmasi_logout_controller.dart';
import 'models/form2fill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_image.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class KonfirmasiLogoutScreen extends GetWidget<KonfirmasiLogoutController> {
  const KonfirmasiLogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(children: [
                      Container(
                          height: 203.adaptSize,
                          width: 203.adaptSize,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup25),
                                  fit: BoxFit.cover)),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgContrastErrorcontainer72x72,
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              alignment: Alignment.center)),
                      SizedBox(height: 69.v),
                      SizedBox(
                          height: 420.v,
                          width: 375.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildProfileSettings(),
                                _buildCtaPrimary(),
                                _buildTwentyThree()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 88.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 20.h, top: 54.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "msg_profile_settings".tr,
            margin: EdgeInsets.only(top: 57.v, bottom: 11.v)));
  }

  /// Section Widget
  Widget _buildProfileSettings() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Obx(() => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 18.v);
                      },
                      itemCount: controller.konfirmasiLogoutModelObj.value
                          .form2fillItemList.value.length,
                      itemBuilder: (context, index) {
                        Form2fillItemModel model = controller
                            .konfirmasiLogoutModelObj
                            .value
                            .form2fillItemList
                            .value[index];
                        return Form2fillItemWidget(model);
                      }))),
              SizedBox(height: 82.v),
              Divider()
            ])));
  }

  /// Section Widget
  Widget _buildCtaPrimary() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 29.v),
            padding: EdgeInsets.symmetric(horizontal: 135.h, vertical: 16.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Text("lbl_log_out".tr.toUpperCase(),
                style: theme.textTheme.bodyMedium)));
  }

  /// Section Widget
  Widget _buildTwentyThree() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 48.h, vertical: 24.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text("lbl_logout2".tr,
                      style: CustomTextStyles.titleMediumUrbanist),
                  SizedBox(height: 46.v),
                  Text("msg_are_you_sure_want".tr.toUpperCase(),
                      style: CustomTextStyles.labelLargeUrbanist_1),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(

                                child: CustomElevatedButton(
                                    onPressed: () => Get.back(),
                                    height: 53.v,
                                    text: "lbl_no".tr,
                                    margin: EdgeInsets.only(right: 4.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillGrayTL26,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumUrbanist)),
                            Expanded(

                                child: CustomElevatedButton(
                                    onPressed:(){
                                      Get.toNamed(
                                        AppRoutes.signScreen,
                                      );
                                    },
                                    height: 53.v,
                                    text: "lbl_yes_log_out".tr,
                                    margin: EdgeInsets.only(left: 4.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillGrayTL26,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumUrbanist))


                          ]))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

}
