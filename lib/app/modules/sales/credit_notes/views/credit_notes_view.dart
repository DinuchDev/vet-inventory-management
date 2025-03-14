import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/credit_notes_controller.dart';

class CreditNotesView extends GetView<CreditNotesController> {
  const CreditNotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreditNotesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreditNotesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
