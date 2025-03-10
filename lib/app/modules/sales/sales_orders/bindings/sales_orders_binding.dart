import 'package:get/get.dart';

import '../controllers/sales_orders_controller.dart';

class SalesOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesOrdersController>(
      () => SalesOrdersController(),
    );
  }
}
