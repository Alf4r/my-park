import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import 'controller/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/widgets/app_bar/appbar_title.dart';
import 'package:hassan_s_application15/widgets/app_bar/custom_app_bar.dart';

class SummaryScreen extends GetWidget<SummaryController> {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      _buildThirteen(),
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 47.h,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed(
              AppRoutes.homePageScreen,
            ); // Handle register action
          },
          // Handle back acc,
        ),
        title: AppbarTitle(
            text: "Recipt".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildThirteen() {
    User user = FirebaseAuth.instance.currentUser!;
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('tiket_user')
          .where('uid', isEqualTo: user.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Jika sedang menunggu data
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Jika terdapat error
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          // Jika data kosong
          return Text('No data available');
        }

        var userDocument = snapshot.data!.docs[0];

        return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('mobil')
              .where('uid', isEqualTo: user.uid)
              .snapshots(),
          builder: (context, innerSnapshot) {
            if (innerSnapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (innerSnapshot.hasError) {
              return Text('Error: ${innerSnapshot.error}');
            } else if (!innerSnapshot.hasData ||
                innerSnapshot.data!.docs.isEmpty) {
              return Text('No inner data available');
            }

            var innerDocument = innerSnapshot.data!.docs[0];

            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 7.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
                  decoration: AppDecoration.fillGray5002,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 309.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Tempat Parkir",
                                style: CustomTextStyles.titleLargeCairo,
                              ),
                              TextSpan(
                                text: userDocument['tempat_parkir'],
                                style: CustomTextStyles.titleLargeCairo22,
                              ),
                              TextSpan(
                                text: "Jenis Kendaraan",
                                style: CustomTextStyles.titleLargeCairo,
                              ),
                              TextSpan(
                                text: innerDocument['jenis'],
                                style: CustomTextStyles.titleLargeCairo22,
                              ),
                              TextSpan(
                                text: "Plat Nomor",
                                style: CustomTextStyles.titleLargeCairo,
                              ),
                              TextSpan(
                                text: innerDocument['plat'],
                                style: CustomTextStyles.titleLargeCairo22,
                              ),
                              TextSpan(
                                text: "Durasi",
                                style: CustomTextStyles.titleLargeCairo,
                              ),
                              TextSpan(
                                text: userDocument['durasi'],
                                style: CustomTextStyles.titleLargeCairo22,
                              ),
                              TextSpan(
                                text: "Tanggal",
                                style: CustomTextStyles.titleLargeCairo,
                              ),
                              TextSpan(
                                text: toLocalTime(userDocument['waktu']),
                                style: CustomTextStyles.titleLargeCairo22,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80.v),
                Container(
                  margin: EdgeInsets.only(left: 4.h, right: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 54.v),
                  decoration: AppDecoration.fillGray5002,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 304.h,
                        child: Text(
                          userDocument['total'].toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  /// Section Widget

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

String toLocalTime(Timestamp timestamp) {
  final formattedDate =
      DateFormat('dd-MM-yyyy HH:mm:ss').format(timestamp.toDate());
  return formattedDate;
}
