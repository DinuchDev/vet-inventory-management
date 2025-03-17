import 'package:get/get.dart';

class ShipmentsController extends GetxController {
  var statusFilter = 'All'.obs;
  var typeFilter = 'All'.obs;
  var isChecked = false.obs;

  final count = 0.obs;

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

  void increment() => count.value++;
}
