import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_orders_controller.dart';

class SalesOrdersView extends GetView<SalesOrdersController> {
  const SalesOrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOrdersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SalesOrdersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
