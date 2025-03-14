import 'package:get/get.dart';

import '../controllers/payments_made_controller.dart';

class PaymentsMadeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentsMadeController>(
      () => PaymentsMadeController(),
    );
  }
}
