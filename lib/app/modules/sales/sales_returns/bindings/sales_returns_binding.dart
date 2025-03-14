import 'package:get/get.dart';

import '../controllers/sales_returns_controller.dart';

class SalesReturnsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesReturnsController>(
      () => SalesReturnsController(),
    );
  }
}
