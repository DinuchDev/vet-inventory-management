import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/packages_controller.dart';

class PackagesView extends GetView<PackagesController> {
  PackagesView({super.key});

  final PackagesController controller = Get.put(PackagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Packages')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPackageColumn('Packages, Not Shipped', controller.notShipped,
                Colors.blue.shade100),
            _buildPackageColumn(
                'Shipped Packages', controller.shipped, Colors.yellow.shade100),
            _buildPackageColumn('Delivered Packages', controller.delivered,
                Colors.green.shade100),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageColumn(
      String title, RxList<String> packages, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: color,
          margin: EdgeInsets.all(0.0),
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.dehaze_rounded, size: 18)
                  ],
                ),
              ),
              Expanded(
                child: Obx(() => packages.isEmpty
                    ? Container(
                        color: Colors.grey,
                        child: Center(child: Text('No Records Found')))
                    : ListView.builder(
                        itemCount: packages.length,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(vertical: 4.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Text(packages[index]),
                          ),
                        ),
                      )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
