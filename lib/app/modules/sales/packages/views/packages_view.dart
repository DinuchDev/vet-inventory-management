import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/packages_controller.dart';

class PackagesView extends GetView<PackagesController> {
  const PackagesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PackagesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PackagesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
