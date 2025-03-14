import 'package:get/get.dart';

import '../controllers/payments_received_controller.dart';

class PaymentsReceivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentsReceivedController>(
      () => PaymentsReceivedController(),
    );
  }
}
