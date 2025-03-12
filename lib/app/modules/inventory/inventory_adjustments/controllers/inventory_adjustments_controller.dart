import 'package:get/get.dart';

class InventoryAdjustmentsController extends GetxController {
  var inventoryList = [].obs;
  final count = 0.obs;

  void fetchInventoryData() {
    // Simulating fetching data
    inventoryList.value = []; // Replace with API or local DB fetch
  }

  @override
  void onInit() {
    fetchInventoryData();
    super.onInit();
  }

  void increment() => count.value++;
}
