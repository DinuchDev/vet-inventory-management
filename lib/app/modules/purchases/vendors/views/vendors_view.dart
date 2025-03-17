import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vendors_controller.dart';

class VendorsView extends GetView<VendorsController> {
  const VendorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'All Vendors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.blue,
            )
          ],
        ),
        // actions: [
        //   Row(
        //     children: [
        //       TextButton(
        //         onPressed: () {},
        //         style: TextButton.styleFrom(
        //           backgroundColor: Colors.blue,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(6), // Adjust the radius
        //           ),
        //         ),
        //         child: Row(
        //           children: [
        //             Icon(Icons.add, color: Colors.white),
        //             const Text(
        //               'NEW',
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   )
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Business is no fun without people.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Create and manage your contacts. all in one place.',
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
                'CREATE NEW VENDOR',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(
              'Click here to import vendor from files',
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'or using',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.attachment_outlined),
              ],
            )
          ],
        ),
      ),
    );
  }
}
