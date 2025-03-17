import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchase_orders_controller.dart';

class PurchaseOrdersView extends GetView<PurchaseOrdersController> {
  const PurchaseOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'All Purchase Orders',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.blue,
            )
          ],
        ),
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Adjust the radius
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.login_outlined, color: Colors.blue),
                    SizedBox(width: 4.0),
                    const Text(
                      'In Transit Receives',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.0),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Adjust the radius
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    const Text(
                      'NEW',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start Managing Your Purchase Activities!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Create, customize and send professional Purchase Orders to your vendors.',
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
                'CREATE NEW PURCHASE ORDER',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
