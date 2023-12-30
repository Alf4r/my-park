import '../controller/cari_controller.dart';
import '../models/hotelcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class HotelcardItemWidget extends StatelessWidget {
  HotelcardItemWidget(
    this.hotelcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HotelcardItemModel hotelcardItemModelObj;

  var controller = Get.find<CariController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL45,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCalculator,
            height: 42.v,
            width: 34.h,
            margin: EdgeInsets.symmetric(vertical: 18.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    hotelcardItemModelObj.hotelName!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 164.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Obx(
                    () => Text(
                      hotelcardItemModelObj.address!.value,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles
                          .bodySmallMontserratBlack90004Regular10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLinkedinBlack90004,
            height: 28.v,
            width: 19.h,
            margin: EdgeInsets.only(
              top: 25.v,
              right: 13.h,
              bottom: 25.v,
            ),
          ),
        ],
      ),
    );
  }
}
