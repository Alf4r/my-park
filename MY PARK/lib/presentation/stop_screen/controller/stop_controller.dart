import 'dart:async';

import 'package:hassan_s_application15/core/app_export.dart';
import 'package:hassan_s_application15/presentation/stop_screen/models/stop_model.dart';

/// A controller class for the StopScreen.
///
/// This class manages the state of the StopScreen, including the
/// current stopModelObj
class StopController extends GetxController {
  Rx<StopModel> stopModelObj = StopModel().obs;

  bool get isTimerRunning => _timer?.isActive ?? false;
  var timerLabel = '00:00:00'.obs;
  Timer? _timer;
  int _seconds = 0;
  var amount = 15000.obs; // Initialize with the starting amount

  @override
  void onInit() {
    super.onInit();
    resetTimer(); // Reset the timer when the controller is initialized
    startTimer();
    startAmountIncrementer();
  }

  void startTimer() {
    _timer?.cancel(); // Cancel any existing timer

    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      _seconds++;
      updateTimerLabel();
    });
  }

  void updateTimerLabel() {
    var hours = (_seconds ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((_seconds % 3600) ~/ 60).toString().padLeft(2, '0');
    var sec = (_seconds % 60).toString().padLeft(2, '0');
    timerLabel.value = "$hours:$minutes:$sec";
  }

  void resetTimer() {
    stopTimer();
    _seconds = 0;
    updateTimerLabel();
  }

  void startAmountIncrementer() {
    Timer.periodic(Duration(minutes: 1), (timer) {
      amount.value += 1000; // Increment the amount by 1000 every minute
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  int get seconds => _seconds;
}

