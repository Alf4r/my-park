import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hassan_s_application15/core/utils/size_utils.dart';
import 'package:intl/intl.dart';
import 'controller/notification_controller.dart';
import 'package:get/get.dart';
// Make sure to import your controller and necessary components

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get size information of the current screen
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    User user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications',
              style: TextStyle(color: Colors.black)), // Style as needed
          backgroundColor: Colors.white, // AppBar with a white background
          iconTheme: IconThemeData(
              color: Colors.black), // AppBar icon with black color
          elevation: 0, // Removes the shadow under the AppBar
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(), // Function to go back
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color:
                Colors.white, // Set the background color of the body to white
            width: mediaQueryData.size.width,
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('tiket_user')
                    .where('uid', isEqualTo: user!.uid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.data!.docs.isEmpty) {
                    return Center(
                        child: Text(
                      'Tidak ada notifikasi',
                    ));
                  }
                  var userDocument = snapshot.data!.docs[0];
                  bool isExpired = checkTimeValidity(userDocument['waktu']);
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      width: 40.h,
                      height: 60.v,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        title: Text(userDocument['tempat_parkir']),
                        subtitle:
                            Text(toLocalTime(userDocument['waktu']).toString()),
                        trailing: Text(
                          isExpired ? 'Expired' : 'Berlaku',
                          style: TextStyle(
                            color: isExpired ? Colors.red : Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }

  String toLocalTime(Timestamp timestamp) {
    final formattedDate =
        DateFormat('dd-MM-yyyy HH:mm:ss').format(timestamp.toDate());
    return formattedDate;
  }

  bool checkTimeValidity(Timestamp firebaseTime) {
    final localTime = DateTime.now();
    final firebaseDateTime = firebaseTime.toDate();
    final timeDifference = localTime.difference(firebaseDateTime);

    // Jika selisih waktu lebih dari 5 menit, anggap sebagai waktu yang tidak berlaku
    return timeDifference.inMinutes > 5;
  }
}
