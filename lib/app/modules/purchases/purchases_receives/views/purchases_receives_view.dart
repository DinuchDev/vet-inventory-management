import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchases_receives_controller.dart';

class PurchasesReceivesView extends GetView<PurchasesReceivesController> {
  const PurchasesReceivesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PurchasesReceivesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PurchasesReceivesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
