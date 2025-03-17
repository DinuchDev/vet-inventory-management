import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchases_receives_controller.dart';

class PurchasesReceivesView extends GetView<PurchasesReceivesController> {
  const PurchasesReceivesView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PurchasesReceivesController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'All Purchase Receives',
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
            DataColumn(label: Text('PURCHASE RECEIVE#')),
            DataColumn(label: Text('PURCHASE ORDER#')),
            DataColumn(label: Text('VENDOR NAME')),
            DataColumn(label: Text('STATUS')),
            DataColumn(label: Text('BILLED')),
            DataColumn(label: Text('QUALITY')),
          ],
          rows: [],
        ),
      ),
    );
  }
}
