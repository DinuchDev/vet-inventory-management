import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payments_received_controller.dart';

class PaymentsReceivedView extends GetView<PaymentsReceivedController> {
  const PaymentsReceivedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentsReceivedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaymentsReceivedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
