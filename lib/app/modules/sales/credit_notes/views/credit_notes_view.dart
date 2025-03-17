import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/credit_notes_controller.dart';

class CreditNotesView extends GetView<CreditNotesController> {
  const CreditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              // Prevents it from taking full width
              children: const [
                Text('All Credit Notes'),
                Icon(Icons.keyboard_arrow_down, color: Colors.blue),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Adjust the radius
                  ),
                ),
                child: const Text(
                  'CREATE NEW CREDIT NOTE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'Import Credit Notes',
                style: TextStyle(fontSize: 12, color: Colors.blue),
              )
            ],
          ),
        ));
  }
}
