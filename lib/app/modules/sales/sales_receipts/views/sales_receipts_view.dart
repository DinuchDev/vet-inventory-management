import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_receipts_controller.dart';

class SalesReceiptsView extends GetView<SalesReceiptsController> {
  const SalesReceiptsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesReceiptsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SalesReceiptsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
