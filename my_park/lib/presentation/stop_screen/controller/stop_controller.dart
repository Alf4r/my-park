import 'dart:async';

import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/stop_screen/models/stop_model.dart';

/// A controller class for the StopScreen.
///
/// This class manages the state of the StopScreen, including the
/// current stopModelObj
class StopController extends GetxController {
  Rx<StopModel> stopModelObj = StopModel().obs;

  bool get isTimerRunning => timer?.isActive ?? false;
  var timerLabel = '00:00:00'.obs;
  Timer? timer;
  int second = 0;
  var amount = 15000.obs; // Initialize with the starting amount

  @override
  void onInit() {
    super.onInit();
    resetTimer(); // Reset the timer when the controller is initialized
    startTimer();
    startAmountIncrementer();
  }

  void startTimer() {
    timer?.cancel(); // Cancel any existing timer

    timer = Timer.periodic(Duration(seconds: 1), (_) {
      second++;
      updateTimerLabel();
    });
  }

  void updateTimerLabel() {
    var hours = (second ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((second % 3600) ~/ 60).toString().padLeft(2, '0');
    var sec = (second % 60).toString().padLeft(2, '0');
    timerLabel.value = "$hours:$minutes:$sec";
  }

  void resetTimer() {
    stopTimer();
    second = 0;
    updateTimerLabel();
  }

  void startAmountIncrementer() {
    Timer.periodic(Duration(minutes: 1), (timer) {
      amount.value += 1000; // Increment the amount by 1000 every minute
    });
  }

  void stopTimer() {
    print(timerLabel.value);
    timer?.cancel();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  int get seconds => second;
}

