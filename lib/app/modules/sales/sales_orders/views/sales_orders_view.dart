import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sales_orders_controller.dart';

class SalesOrdersView extends GetView<SalesOrdersController> {
  const SalesOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 1,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              // Prevents it from taking full width
              children: const [
                Text('All Sales Orders'),
                Icon(Icons.keyboard_arrow_down, color: Colors.blue),
              ],
            ),
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.change_circle,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Text(
                      "View Order Starts",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
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
                'Start Managing YOur Sales Actives!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const Text(
                'Create, customize and send professional Salas Orders',
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
            ],
          ),
        ));
  }
}
