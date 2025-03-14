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
        title: Text('Inventory Adjustments'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min, // Add this line,
        children: [
          ResponsiveWidget(
            largeScreen: buildLargeScreen(),
            mediumScreen: buildMediumScreen(),
            smallScreen: buildSmallScreen(),
          ),
        ],
      ),
    );
  }

  Widget buildLargeScreen() {
    return Column(
      mainAxisSize: MainAxisSize.min, // Add this line
      children: [
        _buildFilters(),
        Flexible(
          fit: FlexFit.loose, // Add this line
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
      mainAxisSize: MainAxisSize.min, // Add this line
      children: [
        _buildFilters(),
        Flexible(
          fit: FlexFit.loose, // Add this line
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
        Flexible(
          fit: FlexFit.loose, // Add this line
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
    return Row(
      children: [
        Text('Filter By: '),
        Row(
          children: [
            Text('Type: '),
            DropdownButton<String>(
              value: 'All',
              items: ['All', 'Type 1', 'Type 2']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {},
            ),
          ],
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Text('Period: '),
            DropdownButton<String>(
              value: 'All',
              items: ['All', 'Period 1', 'Period 2']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTable() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero, // Remove padding from the Container
      color: Colors.grey,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 26,
          columns: [
            DataColumn(
              label: Row(
                children: [
                  Obx(
                    () => Checkbox(
                      activeColor: Colors.grey,
                      value: controller.isChecked.value,
                      onChanged: (value) {
                        controller.isChecked(value ?? false);
                      },
                    ),
                  ),
                  Text('DATE'),
                ],
              ),
            ),
            DataColumn(label: Text('REASON')),
            DataColumn(label: Text('DESCRIPTION')),
            DataColumn(label: Text('STATUS')),
            DataColumn(label: Text('REFERENCE NUMBER')),
            DataColumn(label: Text('TYPE')),
            DataColumn(label: Text('CREATED BY')),
            DataColumn(
              label: Row(
                children: [
                  Text('CREATED TIME'),
                  Icon(
                    Icons.keyboard_double_arrow_down_rounded,
                    size: 16,
                  ),
                ],
              ),
            ),
            DataColumn(label: Text('LAST MODIFIED BY')),
            DataColumn(label: Text('LAST MODIFIED TIME')), // This was missing
            DataColumn(
                label: Center(
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add your search action here
                },
              ),
            )), // Ensure icon is visible
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
              DataCell(Text(item['search'] ?? '')),
              // Ensure this shows
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
