import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import '../../../../../widgets/custom_text.dart';
import '../../../../constants/style.dart';

/// Example without datasource
class AvailableDriversTable extends StatelessWidget {
  const AvailableDriversTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [BoxShadow(offset: const Offset(0, 6), color: lightGrey.withOpacity(.1), blurRadius: 12)],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Available Drivers",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: (56 * 7) + 40,
            child: DataTable2(
              columnSpacing: 12,
              dataRowHeight: 56,
              headingRowHeight: 40,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text("Name"),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                7,
                (index) => DataRow(
                  cells: [
                    const DataCell(CustomText(text: "Santos Enoque")),
                    const DataCell(CustomText(text: "New yourk city")),
                    const DataCell(
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.deepOrange, size: 18),
                          SizedBox(width: 5),
                          CustomText(text: "4.5"),
                        ],
                      ),
                    ),
                    DataCell(
                      Container(
                        decoration: BoxDecoration(
                          color: light,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: active, width: .5),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: CustomText(
                          text: "Assign Delivery",
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
