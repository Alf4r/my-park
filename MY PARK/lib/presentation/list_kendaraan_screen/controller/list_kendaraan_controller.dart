import 'package:get/get.dart';

// Define the Vehicle class
class Vehicle {
  String plat;
  String tipe;

  Vehicle({required this.plat, required this.tipe});
}

// Define the ListKendaraanController
class ListKendaraanController extends GetxController {
  // Observable list of vehicles
  var vehicleList = <Vehicle>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Populate the vehicle list with initial data (replace with your data fetching logic)
    vehicleList.assignAll([
      Vehicle(plat: "B 234 JA", tipe: "Avanza"),
      Vehicle(plat: "A 123 BC", tipe: "Innova"),
      // Add more vehicles as needed...
    ]);
  }

  // Method to handle back action (customize as needed)
  void onTapArrowLeft() {
    // Implement your back action logic
    // For example, navigate to the previous screen
    Get.back();
  }

  // Method to handle register action (customize as needed)
  void onTapRegister() {
    // Implement your register action logic
    // For example, navigate to a registration screen
    // Get.to(() => RegistrationScreen());
  }

// Add other methods and logic as per your application's requirements
}
