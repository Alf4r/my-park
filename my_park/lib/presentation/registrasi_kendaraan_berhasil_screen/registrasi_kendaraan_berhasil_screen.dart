import 'controller/registrasi_kendaraan_berhasil_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class RegistrasiKendaraanBerhasilScreen
    extends GetWidget<RegistrasiKendaraanBerhasilController> {
  const RegistrasiKendaraanBerhasilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5003,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 115.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 66.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup758,
                          height: 94.v,
                          width: 114.h),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_success".tr,
                              style: CustomTextStyles
                                  .headlineSmallUrbanistTealA700))
                    ])),
            bottomNavigationBar: _buildBackButton()));
  }

  /// Section Widget
  Widget _buildBackButton() {
    return CustomElevatedButton(
        text: "lbl_back2".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 15.h, right: 10.h, bottom: 23.v),
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
        onPressed: () {
          onTapBackButton();
        });
  }

  /// Navigates to the listKendaraanScreen when the action is triggered.
  onTapBackButton() {
    Get.toNamed(
      AppRoutes.listKendaraanScreen,
    );
  }
}
