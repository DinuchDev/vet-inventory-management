import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payments_made_controller.dart';

class PaymentsMadeView extends GetView<PaymentsMadeController> {
  const PaymentsMadeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              // Text('Shipments'),
              Text('All Payments'),
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.blue)
            ],
          ),
          actions: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(6), // Adjust the radius
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
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You haven\'t made any payments yet.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Receipts of your bill payments wil show up here.',
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
                'CREATE NEW CUSTOMER',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Text(
              'Import Payments',
              style: TextStyle(fontSize: 12, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
