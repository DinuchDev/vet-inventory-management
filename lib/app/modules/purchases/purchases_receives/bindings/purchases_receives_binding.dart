import 'package:get/get.dart';

import '../controllers/purchases_receives_controller.dart';

class PurchasesReceivesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchasesReceivesController>(
      () => PurchasesReceivesController(),
    );
  }
}
