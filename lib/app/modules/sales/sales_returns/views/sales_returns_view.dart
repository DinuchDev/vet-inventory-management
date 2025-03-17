import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_returns_controller.dart';

class SalesReturnsView extends GetView<SalesReturnsController> {
  const SalesReturnsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sales Returns',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const Text(
              'Process your product returns in a few sample steps and get your inventory automatically sorted out.'),
          const Text(
            'Start creating sales return from sales orders',
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // Adjust the radius
              ),
            ),
            child: const Text(
              'GO TO SALES ORDERS',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
