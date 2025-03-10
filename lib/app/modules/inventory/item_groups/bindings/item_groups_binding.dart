import 'package:get/get.dart';

import '../controllers/item_groups_controller.dart';

class ItemGroupsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemGroupsController>(
      () => ItemGroupsController(),
    );
  }
}
