import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/style.dart';
import '../routes/app_pages.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = homePageDisplayName.obs;
  var hoverItem = "".obs;
  var selectedExpansionTile = ''.obs;
  var expandedTile = ''.obs;

  void toggleExpansionTile(String itemName) {
    if (selectedExpansionTile.value == itemName) {
      selectedExpansionTile.value = '';
      expandedTile.value = ''; // Collapse
    } else {
      selectedExpansionTile.value = itemName;
      expandedTile.value = itemName; // Expand
    }
  }

  bool isExpanded(String itemName) => selectedExpansionTile.value == itemName;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  ///check this always for updates...
  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case homePageDisplayName:
        return _customIcon(Icons.home, itemName);
      case inventoryDropDownDisplayName:
        return _customIcon(Icons.stroller_rounded, itemName);
      case integrationsPageDisplayName:
        return _customIcon(Icons.integration_instructions_outlined, itemName);
      case reportsPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case documentsPageDisplayName:
        return _customIcon(Icons.newspaper, itemName);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: white);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : white,
    );
  }
}

class MenuItem {
  final String name;
  final String route;
  final IconData? icon;
  final List<MenuItem>? subMenuItems;

  MenuItem(this.name, this.route, {this.icon, this.subMenuItems});
}

///check this always for latest updates...
List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePageDisplayName, homePageRoute),
  MenuItem(
    inventoryDropDownDisplayName,
    inventoryDropDownPageRoute,
    subMenuItems: [
      MenuItem("Items", itemsPageRoute, icon: Icons.add_box_rounded),
      MenuItem("Item Groups", itemGroupsPageRoute, icon: Icons.add_box_rounded),
      MenuItem("Inventory Adjustments", inventoryAdjustmentsPageRoute,
          icon: Icons.add_box_rounded),
    ],
  ),
  MenuItem(salesPageDisplayName, salesPageRoute, subMenuItems: [
    MenuItem("Customers", customersPageRoute, icon: Icons.add_box_rounded),
    MenuItem("Sales Orders", salesOrdersPageRoute, icon: Icons.add_box_rounded),
  ]),
  MenuItem(purchasesPageDisplayName, purchasesPageRoute, subMenuItems: [
    MenuItem("Vendors", vendorsPageRoute, icon: Icons.add_box_rounded),
    MenuItem("Purchase Orders", purchaseOrdersPageRoute,
        icon: Icons.add_box_rounded),
  ]),
  MenuItem(integrationsPageDisplayName, integrationsPageRoutes),
  MenuItem(reportsPageDisplayName, reportsPageRoutes),
  MenuItem(documentsPageDisplayName, documentsPageRoutes),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
