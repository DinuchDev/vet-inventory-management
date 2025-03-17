import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoices_controller.dart';

class InvoicesView extends GetView<InvoicesController> {
  const InvoicesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InvoicesController());
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Row(
            children: [
              // Text('Shipments'),
              Text('Testing'),
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
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        width: double.infinity,
        child: DataTable(
          // columnSpacing: 26,
          // horizontalMargin: 0.1,
          columns: [
            DataColumn(
                label: Row(
              children: [
                Obx(() => Checkbox(
                      value: controller.isChecked.value,
                      onChanged: (value) {
                        controller.isChecked(value ?? false);
                      },
                      activeColor: Colors.grey,
                    )),
                Text('DATE'),
              ],
            )),
            DataColumn(label: Text('INVOICE#')),
            DataColumn(label: Text('ORDER NUMBER')),
            DataColumn(label: Text('CUSTOMER NAME')),
            DataColumn(label: Text('STATUS')),
            DataColumn(label: Text('DUE DATE')),
            DataColumn(label: Text('AMOUNT#')),
            DataColumn(label: Text('BALANCE DUE')),
          ],
          rows: [],
        ),
      ),
    );
  }
}
