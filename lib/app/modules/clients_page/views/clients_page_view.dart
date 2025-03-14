import 'package:dashboard/app/modules/clients_page/views/widgets/clients_table.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../base_controller/const_controller.dart';
import '../../../../widgets/custom_text.dart';
import '../../../helpers/reponsiveness.dart';
import '../controllers/clients_page_controller.dart';

class ClientsPageView extends GetView<ClientsPageController> {
  const ClientsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Obx(() => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top:
                  ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold,)),
            ],
          ),),

          Expanded(child: ListView(
            children: const [
              Clientstable(),
            ],
          )),

        ],
      ),
    );
  }
}
