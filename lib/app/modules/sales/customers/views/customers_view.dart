import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customers_controller.dart';

class CustomersView extends GetView<CustomersController> {
  const CustomersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Business is no fun without people.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const Text(
            'Create your image your contacts, all in one place.',
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text(
              'CREATE NEW CUSTOMER',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Text(
            'Click here to import customers form file',
            style: TextStyle(fontSize: 12, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Or using',
                style: TextStyle(fontSize: 12),
              ),
              Icon(Icons.attachment),
              Icon(Icons.attachment),
              Icon(Icons.attachment),
            ],
          )
        ],
      ),
    );
  }
}
