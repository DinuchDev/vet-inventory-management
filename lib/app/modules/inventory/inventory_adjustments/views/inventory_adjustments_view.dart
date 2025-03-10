import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inventory_adjustments_controller.dart';

class InventoryAdjustmentsView extends GetView<InventoryAdjustmentsController> {
  const InventoryAdjustmentsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InventoryAdjustmentsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InventoryAdjustmentsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
