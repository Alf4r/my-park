import '../cari_screen/widgets/hotelcard_item_widget.dart';
import 'controller/cari_controller.dart';
import 'models/hotelcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CariScreen extends GetWidget<CariController> {
  const CariScreen({Key? key})
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
          padding: EdgeInsets.only(top: 30.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.gray10003,
                theme.colorScheme.onPrimary.withOpacity(0),
              ],
            ),
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 19.v,
                );
              },
              itemCount:
                  controller.cariModelObj.value.hotelcardItemList.value.length,
              itemBuilder: (context, index) {
                HotelcardItemModel model = controller
                    .cariModelObj.value.hotelcardItemList.value[index];
                return HotelcardItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 359.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowRightBlueGray400,
        margin: EdgeInsets.only(
          left: 10.h,
          right: 319.h,
        ),
      ),
    );
  }
}
