import '../controller/konfirmasi_logout_controller.dart';
import '../models/form2fill_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class Form2fillItemWidget extends StatelessWidget {
  Form2fillItemWidget(
    this.form2fillItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Form2fillItemModel form2fillItemModelObj;

  var controller = Get.find<KonfirmasiLogoutController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 4.v),
        Obx(
          () => Text(
            form2fillItemModelObj.emailAddress!.value,
            style: theme.textTheme.bodySmall,
          ),
        ),
        SizedBox(height: 15.v),
        Obx(
          () => Text(
            form2fillItemModelObj.wahabkIcloudCom!.value,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 6.v),
        Divider(),
      ],
    );
  }
}
