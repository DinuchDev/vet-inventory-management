import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bills_controller.dart';

class BillsView extends GetView<BillsController> {
  const BillsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BillsController());
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              // Text('Shipments'),
              Text('Upload Documents Bills'),
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
                      const Text(
                        'Upload Bill',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 32.0, child: VerticalDivider()),
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8.0,
            ),
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
      body: Column(
        children: [
          Container(
            color: Colors.grey.withOpacity(0.1),
            width: double.infinity,
            child: Row(
              children: [
                Text("VIEW BY: "),
                Row(
                  children: [
                    DropdownButton<String>(
                      underline: Container(),
                      value: controller.billList.value,
                      onChanged: (value) => controller.billList.value = value!,
                      items: ['All Bills', 'cash', 'wing', 'aba']
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(3), // Rounded corners
                    ),
                    child: Icon(Icons.more_vert_outlined)),
                SizedBox(width: 8.0),
                Container(
                    width: 28,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(3), // Rounded corners
                    ),
                    child: Icon(Icons.list_rounded)),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 120),
              Text(
                "Owe money? It's good to play bills on time!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Text(
                  "If you\'ve purchase something for your business, and you don't have to repay it immediately, than you can record it as a bill"),
              Text(
                "Import Bills",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
