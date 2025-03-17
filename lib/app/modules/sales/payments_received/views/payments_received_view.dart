import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payments_received_controller.dart';

class PaymentsReceivedView extends GetView<PaymentsReceivedController> {
  const PaymentsReceivedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Text(
                  'All Received Payments',
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
                'No payments received, yet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const Text(
                'Payments will be added once your customer pay for their invoices',
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
                  'GO TO UNPAID INVOICES',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'Import Payments',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              )
            ],
          ),
        ));
  }
}
