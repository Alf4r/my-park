import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
//import '../notification_screen/notification_screen.dart';
import '../maps_screen/maps_screen.dart';
import 'controller/home_page_controller.dart'; // Replace with the correct path to your controller

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = Get.find<HomePageController>();
    final user = FirebaseAuth.instance.currentUser;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Parking', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                Get.toNamed(
                  AppRoutes.notificationScreen,
                ); // Navigate to notification screen
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {
                Get.toNamed(
                  AppRoutes.profileSettingsScreen,
                ); // Handle register action
              },
            ),
          ],
        ),
        body: Column(
          children: [
            //get data from collection firebase

            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .where('uid', isEqualTo: user!.uid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  var userDocument = snapshot.data!.docs[0];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/profile_placeholder.png'),
                    ),
                    title: Text(userDocument['fullName']),
                    subtitle: Text(userDocument['email']),
                    onTap: controller.onTapProfile,
                  );
                }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: controller.searchController,
                decoration: InputDecoration(
                  hintText: "Cari Parkir...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (String value) {
                  // Process the submitted value
                  Get.toNamed(
                    AppRoutes.cariScreen, // Replace with your actual route
                    arguments: value, // Passing the search query as an argument
                  );

                  // Reset the text field
                  controller.searchController.clear();
                },
              ),
            ),

            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MapsScreen()), // Replace 'MapsScreen' with the actual name of your maps screen
                );
              },
              child: Container(
                width: double.infinity, // Takes the full width of the parent
                height: 195, // Set the height to match the SizedBox
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Color(0xFFE0E0E0), // Placeholder color
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  // Clip it with the same border radius as the container
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/maps.png', // Map image
                    fit: BoxFit.cover, // Cover the entire space of the box
                  ),
                ),
              ),
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                padding: EdgeInsets.all(16),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildMenuOption(
                    Icons.directions_car,
                    'CAR PLATE',
                    controller.onTapCarPlat,
                  ),
                  _buildMenuOption(Icons.play_arrow, 'START/STOP',
                      controller.onTapStartStop),
                  _buildMenuOption(
                      Icons.receipt, 'RECEIPT', controller.onTapReceipt),
                  _buildMenuOption(
                      Icons.history, 'HISTORY', controller.onTapHistory),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuOption(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.black, // Set the text color to black
                // You can add other text styling properties here if needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
