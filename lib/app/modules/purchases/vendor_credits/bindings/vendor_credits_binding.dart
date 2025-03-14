import 'package:get/get.dart';

import '../controllers/vendor_credits_controller.dart';

class VendorCreditsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VendorCreditsController>(
      () => VendorCreditsController(),
    );
  }
}
