import 'package:get/get.dart';

import '../controllers/clients_page_controller.dart';

class ClientsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientsPageController>(
      () => ClientsPageController(),
    );
  }
}
