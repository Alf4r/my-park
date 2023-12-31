import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/keterswedian_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/custom_elevated_button.dart';

class KeterswedianScreen extends GetWidget<KeterswedianController> {
  const KeterswedianScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    CollectionReference student =
        FirebaseFirestore.instance.collection('parkir');
    var jumlahKetersediaan;
    final binding = Get.find<KeterswedianController>();
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
                              StreamBuilder<DocumentSnapshot>(
                                  stream: student
                                      .doc('cYS4UB3hTV8KraKMNxPi')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    Map<String, dynamic> data = snapshot.data!
                                        .data() as Map<String, dynamic>;
                                    jumlahKetersediaan = data['ketersediaan'];
                                    if (snapshot.hasData) {
                                      return Container(
                                          width: 26.h,
                                          margin: EdgeInsets.only(left: 81.h),
                                          child: Text("${data['ketersediaan']}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme.headlineSmall));
                                    } else if (snapshot.hasError) {
                                      return Text("lbl_error".tr,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.headlineSmall);
                                    } else {
                                      return Text("lbl_loading".tr,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.headlineSmall);
                                    }
                                  })
                            ]),
                      ),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          width: 127.h,
                          text: "lbl_ok".tr,
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallOnPrimary,
                          onPressed: () async {
                            final SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            final String? action = prefs.getString('parkir1');
                            print(action);
                            await SharedPreferences.getInstance();
                            final snapshot = await student.get();
                            final data = snapshot.docs.first.data();

                            if (data != null) {
                              jumlahKetersediaan = (data
                                  as Map<String, dynamic>)['ketersediaan'] -= 1;
                            }

                            student
                                .doc(snapshot.docs.first.id)
                                .update(data as Map<Object, Object?>);

                            String collectionPath = "tiket_user";
                            User user = FirebaseAuth.instance.currentUser!;
                            Map<String, dynamic> dataRecipt = {
                              "uid": user.uid,
                              "tempat_parkir": binding.text,
                              "waktu": DateTime.now()
                            };

// Memanggil fungsi insertData()
                            await insertData(collectionPath, dataRecipt);
                            print(jumlahKetersediaan);
                            onTapOK(jumlahKetersediaan);
                          }),
                      SizedBox(height: 5.v),
                    ])))));
  }

  /// Navigates to the hasilOneScreen when the action is triggered.
  onTapOK(data) {
    Get.toNamed(AppRoutes.hasilOneScreen, arguments: data);
  }

  Future<void> insertData(
      String collectionPath, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final docSnapshot =
          await firestore.collection(collectionPath).doc(user.uid).get();
      if (docSnapshot.exists) {
        await firestore.collection(collectionPath).doc(user.uid).update(data);
      } else {
        await firestore.collection(collectionPath).doc(user.uid).set(data);
      }
    } else {
      await firestore.collection(collectionPath).doc(user?.uid).update(data);
    }
  }
}
