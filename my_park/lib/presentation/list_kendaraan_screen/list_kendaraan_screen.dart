import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/regis_plat_screen/regis_plat_screen.dart';
import 'package:hassan_s_application15/theme/app_decoration.dart';
import 'package:hassan_s_application15/theme/theme_helper.dart';
import '../../routes/app_routes.dart';
import '../regis_plat_screen/regis_plat_screen.dart';
import '../regis_plat_screen/regis_plat_screen.dart';
import 'controller/list_kendaraan_controller.dart'; // Make sure the path to your controller is correct.

// Dummy model class for vehicle, replace with your actual Vehicle model.
class Vehicle {
  final String plat;
  final String tipe;

  Vehicle(this.plat, this.tipe);
}

class ListKendaraanScreen extends GetWidget<ListKendaraanController> {
  const ListKendaraanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dummy list of vehicles, replace with actual data source

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Kendaraan'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.toNamed(
                AppRoutes.homePageScreen,
              ); // Handle register action
            },
            // Handle back acc,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.toNamed(
                  AppRoutes.regisPlatScreen,
                ); // Handle register action
              },
              child: Text('Register'),
            )
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('mobil')
                .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.data!.docs.isEmpty) {
                return Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(
                    child: Text(
                      'Tidak ada data',
                    ),
                  ),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var userDocument = snapshot.data!.docs[index];
                  return _buildVehicleTile(
                      userDocument['plat'], userDocument['jenis']);
                },
              );
            }),
      ),
    );
  }

  Widget _buildVehicleTile(String plat, String tipe) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(plat),
        subtitle: Text(tipe),
        // Optionally, add an onTap or other interactions
      ),
    );
  }
}
