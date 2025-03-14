import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoices_controller.dart';

class InvoicesView extends GetView<InvoicesController> {
  const InvoicesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InvoicesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InvoicesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
