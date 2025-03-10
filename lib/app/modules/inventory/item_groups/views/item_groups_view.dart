import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/item_groups_controller.dart';

class ItemGroupsView extends GetView<ItemGroupsController> {
  const ItemGroupsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ItemGroupsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ItemGroupsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
