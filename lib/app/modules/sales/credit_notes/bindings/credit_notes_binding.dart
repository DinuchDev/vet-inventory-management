import 'package:get/get.dart';

import '../controllers/credit_notes_controller.dart';

class CreditNotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditNotesController>(
      () => CreditNotesController(),
    );
  }
}
