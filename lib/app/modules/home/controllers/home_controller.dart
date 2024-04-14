import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  refreshOnButton() {
    refreshIndicatorKey.currentState?.show();
  }
  Future<void> refreshData() async {

      await Future.delayed(const Duration(seconds: 2)); // Simulating a delay

  }

  void increment() => count.value++;


}
