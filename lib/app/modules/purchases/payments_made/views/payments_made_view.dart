import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payments_made_controller.dart';

class PaymentsMadeView extends GetView<PaymentsMadeController> {
  const PaymentsMadeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentsMadeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaymentsMadeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
