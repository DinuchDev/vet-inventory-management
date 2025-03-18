import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vendor_credits_controller.dart';

class VendorCreditsView extends GetView<VendorCreditsController> {
  const VendorCreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text('All Vendor Credits'),
            Icon(Icons.keyboard_arrow_down_outlined, color: Colors.blue)
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
        //             borderRadius:
        //                 BorderRadius.circular(6), // Adjust the radius
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
              'You desert some credit too.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            const Text(
              'Create vendor credits and multiple bills bills when buying stuff from your vendor.',
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
                'CREATE VENDOR CREDITS',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Text(
              'Import Vendor Credits',
              style: TextStyle(fontSize: 12, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
