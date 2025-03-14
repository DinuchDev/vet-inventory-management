import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vendor_credits_controller.dart';

class VendorCreditsView extends GetView<VendorCreditsController> {
  const VendorCreditsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VendorCreditsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VendorCreditsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
