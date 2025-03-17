import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/shipments_controller.dart';

class ShipmentsView extends GetView<ShipmentsController> {
  const ShipmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ShipmentsController());

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Text(
                      "View EasyPast Usage",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, right: 8.0),
                    child: Text(
                      'easyPast.',
                      style: TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),
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
              ),
            )
          ]),
      body: Column(
        children: [
          Container(
            color: Colors.grey.withOpacity(0.3),
            height: 104,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Filter By: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Text("Status: "),
                          DropdownButton<String>(
                            underline: Container(),
                            value: controller.statusFilter.value,
                            onChanged: (value) =>
                                controller.statusFilter.value = value!,
                            items: ['All', 'Pending', 'Shipped', 'Delivered']
                                .map((e) =>
                                    DropdownMenuItem(value: e, child: Text(e)))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Text("Type: "),
                          DropdownButton<String>(
                            underline: Container(),
                            value: controller.typeFilter.value,
                            onChanged: (value) =>
                                controller.typeFilter.value = value!,
                            items: ['All', 'Express', 'Standard']
                                .map((e) =>
                                    DropdownMenuItem(value: e, child: Text(e)))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    // columnSpacing: 26,
                    horizontalMargin: 0.1,
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
                      DataColumn(label: Text('SHIPMENT ORDER#')),
                      DataColumn(label: Text('CUSTOMER NAME')),
                      DataColumn(label: Text('SALES ORDER#')),
                      DataColumn(label: Text('PACKAGE#')),
                      DataColumn(label: Text('CARRIER')),
                      DataColumn(label: Text('TRACKING#')),
                      DataColumn(label: Text('STATUS')),
                      DataColumn(label: Text('SHIPPING RATE')),
                    ],
                    rows: [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
