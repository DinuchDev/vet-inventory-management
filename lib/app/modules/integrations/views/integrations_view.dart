import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/integrations_controller.dart';

class IntegrationsView extends GetView<IntegrationsController> {
  const IntegrationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntegrationsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IntegrationsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
