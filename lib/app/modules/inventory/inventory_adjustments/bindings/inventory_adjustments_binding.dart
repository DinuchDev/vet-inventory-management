import 'package:get/get.dart';

import '../controllers/inventory_adjustments_controller.dart';

class InventoryAdjustmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryAdjustmentsController>(
      () => InventoryAdjustmentsController(),
    );
  }
}
