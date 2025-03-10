import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vendors_controller.dart';

class VendorsView extends GetView<VendorsController> {
  const VendorsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VendorsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VendorsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
