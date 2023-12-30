import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hassan_s_application15/presentation/regis_plat_screen/regis_plat_screen.dart';
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
    final vehicleList = [
      Vehicle("B 234 JA", "Avanza"),
      // Add more vehicles...
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Kendaraan'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.toNamed(
                AppRoutes.homePageScreen,
              );// Handle register action
            },
              // Handle back acc,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.toNamed(
                  AppRoutes.regisPlatScreen,
                );// Handle register action
              },
              child: Text('Register'),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: vehicleList.length,
          itemBuilder: (context, index) {
            final vehicle = vehicleList[index];
            return _buildVehicleTile(vehicle.plat, vehicle.tipe);
          },
        ),
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
