import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/items_controller.dart';

class ItemsView extends GetView<ItemsController> {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemsController controller = Get.put(ItemsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: Get.height,
          child: Obx(
            () => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.8,
              ),
              itemCount: controller.items.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.items[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item["title"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Image.asset(
                        item["image"]!,
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 12),
                      Text(
                        item["desc"]!,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          Get.snackbar(
                            "Action",
                            "${item["button"]} clicked",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        },
                        child: Text(item["button"]!),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
