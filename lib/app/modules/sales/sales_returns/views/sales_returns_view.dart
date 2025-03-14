import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_returns_controller.dart';

class SalesReturnsView extends GetView<SalesReturnsController> {
  const SalesReturnsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesReturnsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SalesReturnsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
