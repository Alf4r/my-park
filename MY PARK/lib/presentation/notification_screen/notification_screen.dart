import 'package:flutter/material.dart';
import 'controller/notification_controller.dart';
import 'package:get/get.dart';
// Make sure to import your controller and necessary components

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get size information of the current screen
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(color: Colors.black)), // Style as needed
        backgroundColor: Colors.white, // AppBar with a white background
        iconTheme: IconThemeData(color: Colors.black), // AppBar icon with black color
        elevation: 0, // Removes the shadow under the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(), // Function to go back
        ),
      ),
      body: Container(
        color: Colors.white, // Set the background color of the body to white
        width: mediaQueryData.size.width,
        child: ListView(
          // Use ListView to list all notifications
          children: [
            // Example of a single notification item
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "No older notifications available.", // Text for no notifications
                style: TextStyle(
                  fontSize: 16.0, // Adjust the font size as needed
                  color: Colors.black87, // Adjust the color as needed
                ),
              ),
            ),
            // Add more notification items as needed
          ],
        ),
      ),
    );
  }
}
