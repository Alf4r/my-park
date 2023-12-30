import 'controller/regis_plat_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/core/utils/validation_functions.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';
import 'package:hassan_s_application15/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisPlatScreen extends GetWidget<RegisPlatController> {
  RegisPlatScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Registrasi Plat"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.back(),
            )
        ),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView( // Added SingleChildScrollView for better scrolling behavior
            child: Column(
              children: [
                _buildPlatAndTypeSection(), // New method for top left section
                Container(
                  width: 375.h,
                  padding: EdgeInsets.symmetric(vertical: 30.v),
                  child: Column(
                    children: [
                      SizedBox(height: 26.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildDoneButtonSection(),
      ),
    );
  }

// New method to create the top left section
  Widget _buildPlatAndTypeSection() {
    return Padding(
      padding: EdgeInsets.only(left: 19.h, right: 19.h, top: 10.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("lbl_plat2".tr.toUpperCase(),
                style: CustomTextStyles.labelLarge_1),
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: controller.platNumberController,
            hintText: "Insert Car Plate",
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "err_msg_please_enter_valid_plat_number".tr;
              }
              return null;
            },
            obscureText: false,
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("lbl_jenis_mobil".tr.toUpperCase(),
                style: CustomTextStyles.labelLarge_1),
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: controller.jenisMobilController,
            hintText: "Insert Car Type",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "err_msg_please_enter_car_type".tr;
              }
              return null;
            },
            obscureText: false,
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          ),
        ],
      ),
    );
  }

  /// Section Widget




  /// Section Widget


  Widget _buildDoneButtonSection() {
    return CustomElevatedButton(
        text: "lbl_done".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 30.v),
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
        onPressed: () {
          onTapDoneButtonSection();
        });
  }

  /// Navigates to the registrasiKendaraanBerhasilScreen when the action is triggered.
  onTapDoneButtonSection() {
    Get.toNamed(
      AppRoutes.registrasiKendaraanBerhasilScreen,
    );
  }
}
