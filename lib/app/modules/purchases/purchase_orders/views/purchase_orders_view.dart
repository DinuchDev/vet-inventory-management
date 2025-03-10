import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchase_orders_controller.dart';

class PurchaseOrdersView extends GetView<PurchaseOrdersController> {
  const PurchaseOrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PurchaseOrdersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PurchaseOrdersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
