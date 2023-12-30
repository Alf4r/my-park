import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "start".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08-Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06-Forgot password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "MAPS".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KETERSWEDIAN".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.keterswedianScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "pengurangan Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.penguranganTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "hasil One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hasilOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "28-Profile settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "29-Change password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "edit profile sucsess".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editProfileSucsessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Start One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "stop".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.stopScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "List kendaraan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listKendaraanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "REGIS PLAT".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.regisPlatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registrasi kendaraan berhasil".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrasiKendaraanBerhasilScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "history".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "history empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification KOSOSNG".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationKososngScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "cari ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cariScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "pengurangan One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.penguranganOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "pengurangan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.penguranganScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "hasil".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hasilScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Summary".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Summary not found".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryNotFoundScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Logout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "konfirmasi logout".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.konfirmasiLogoutScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
