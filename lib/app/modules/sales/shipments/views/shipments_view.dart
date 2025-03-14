import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shipments_controller.dart';

class ShipmentsView extends GetView<ShipmentsController> {
  const ShipmentsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShipmentsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShipmentsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
