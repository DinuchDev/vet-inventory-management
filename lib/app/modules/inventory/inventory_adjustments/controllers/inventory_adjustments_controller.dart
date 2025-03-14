import 'package:get/get.dart';

class InventoryAdjustmentsController extends GetxController {
  var inventoryList = [].obs;
  final count = 0.obs;

  var isChecked = false.obs;

  void fetchInventoryData() {
    // Simulating fetching data
    inventoryList.value = [
      {
        'date': '2025-03-13',
        'reason': 'Stock Adjustment',
        'description': 'Adjusted stock',
        'status': 'Completed',
        'reference': 'REF123',
        'type': 'Adjustment',
        'createdBy': 'Admin',
        'createdTime': '2025-03-13',
        'modifiedBy': 'Admin',
        'modifiedTime': '2025-03-13',
        'search': 'empty',
      },
    ]; // Replace with API or local DB fetch
  }

  @override
  void onInit() {
    fetchInventoryData();
    super.onInit();
  }

  void increment() => count.value++;
}
