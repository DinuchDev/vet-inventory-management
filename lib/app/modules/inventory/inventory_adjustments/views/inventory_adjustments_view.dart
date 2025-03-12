import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../helpers/reponsiveness.dart';
import '../controllers/inventory_adjustments_controller.dart';

class InventoryAdjustmentsView extends GetView<InventoryAdjustmentsController> {
  final InventoryAdjustmentsController controller =
      Get.put(InventoryAdjustmentsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Inventory Adjustments')),
      body: ResponsiveWidget(
        largeScreen: buildLargeScreen(),
        mediumScreen: buildMediumScreen(),
        smallScreen: buildSmallScreen(),
      ),
    );
  }

  Widget buildLargeScreen() {
    return Column(
      children: [
        _buildFilters(),
        Expanded(
          child: Obx(() {
            if (controller.inventoryList.isEmpty) {
              return Center(child: Text('No data to display'));
            }
            return _buildTable();
          }),
        ),
      ],
    );
  }

  Widget buildMediumScreen() {
    return Column(
      children: [
        _buildFilters(),
        Expanded(
          child: Obx(() {
            if (controller.inventoryList.isEmpty) {
              return Center(child: Text('No data to display'));
            }
            return _buildTable();
          }),
        ),
      ],
    );
  }

  Widget buildSmallScreen() {
    return Column(
      children: [
        _buildFilters(),
        Expanded(
          child: Obx(() {
            if (controller.inventoryList.isEmpty) {
              return Center(child: Text('No data to display'));
            }
            return _buildTable();
          }),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('Filter By: '),
          DropdownButton<String>(
            value: 'All',
            items: ['All', 'Type 1', 'Type 2']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {},
          ),
          SizedBox(width: 10),
          DropdownButton<String>(
            value: 'All',
            items: ['All', 'Period 1', 'Period 2']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  Widget _buildTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: Text('DATE')),
          DataColumn(label: Text('REASON')),
          DataColumn(label: Text('DESCRIPTION')),
          DataColumn(label: Text('STATUS')),
          DataColumn(label: Text('REFERENCE NUMBER')),
          DataColumn(label: Text('TYPE')),
          DataColumn(label: Text('CREATED BY')),
          DataColumn(label: Text('CREATED TIME')),
          DataColumn(label: Text('LAST MODIFIED BY')),
          DataColumn(label: Text('LAST MODIFIED TIME')),
        ],
        rows: controller.inventoryList.map((item) {
          return DataRow(cells: [
            DataCell(Text(item['date'] ?? '')),
            DataCell(Text(item['reason'] ?? '')),
            DataCell(Text(item['description'] ?? '')),
            DataCell(Text(item['status'] ?? '')),
            DataCell(Text(item['reference'] ?? '')),
            DataCell(Text(item['type'] ?? '')),
            DataCell(Text(item['createdBy'] ?? '')),
            DataCell(Text(item['createdTime'] ?? '')),
            DataCell(Text(item['modifiedBy'] ?? '')),
            DataCell(Text(item['modifiedTime'] ?? '')),
          ]);
        }).toList(),
      ),
    );
  }
}
