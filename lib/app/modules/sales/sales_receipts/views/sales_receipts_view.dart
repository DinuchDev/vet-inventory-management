import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_receipts_controller.dart';

class SalesReceiptsView extends GetView<SalesReceiptsController> {
  const SalesReceiptsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Text(
                  'Sales Receipts',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
                'Start professional sales receipts instantly!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const Text(
                'Create sales receipts and send them to your customers as proof of payments you\'ve received toward their purchase.',
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
                  'NEW SALES RECEIPTS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'Import Sales Receipt',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              )
            ],
          ),
        ));
  }
}
