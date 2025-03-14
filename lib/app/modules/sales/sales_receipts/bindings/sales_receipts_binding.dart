import 'package:get/get.dart';

import '../controllers/sales_receipts_controller.dart';

class SalesReceiptsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesReceiptsController>(
      () => SalesReceiptsController(),
    );
  }
}
