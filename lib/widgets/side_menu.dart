import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/base_controller/const_controller.dart';
import '../app/base_controller/menu_controller.dart';
import '../app/constants/style.dart';
import '../app/helpers/reponsiveness.dart';
import '../app/routes/app_pages.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: sideMenuItemRoutes.map((item) {
            if (item.subMenuItems != null && item.subMenuItems!.isNotEmpty) {
              return Obx(
                () => ExpansionTile(
                  shape: Border(),
                  trailing: Icon(
                    menuController.expandedTile.value == item.name
                        ? Icons.arrow_drop_down
                        : Icons.arrow_right_outlined,
                    color: menuController.isExpanded(item.name)
                        ? Colors.indigo
                        : Colors.white,
                  ),
                  leading: Icon(
                    item.name == salesPageDisplayName
                        ? Icons.sell
                        : item.name == inventoryDropDownDisplayName
                            ? Icons.inventory
                            : (item.icon ?? Icons.shopping_bag_outlined),
                    color: menuController.isExpanded(item.name)
                        ? Colors.indigo
                        : Colors.white,
                  ),
                  title: CustomText(
                    text: item.name,
                    color: menuController.isExpanded(item.name)
                        ? Colors.indigo
                        : Colors.white,
                  ),
                  onExpansionChanged: (expanded) {
                    if (expanded) {
                      menuController.toggleExpansionTile(item.name);
                    } else {
                      menuController.toggleExpansionTile(''); // Collapse
                    }
                  },
                  children: item.subMenuItems!.map((subItem) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 2.0),
                      decoration: BoxDecoration(
                        color: menuController.isActive(subItem.name)
                            ? Colors.indigo
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 36.0),
                                child: CustomText(
                                    text: subItem.name, color: Colors.white),
                              ),
                            ),
                            menuController.isActive(subItem.name)
                                ? Icon(Icons.add_circle_rounded, color: Colors.white)
                                : SizedBox.shrink()
                          ],
                        ),
                        focusColor: CupertinoColors.black,
                        hoverColor: CupertinoColors.black,
                        onTap: () {
                          menuController.changeActiveItemTo(subItem.name);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigationController.navigateTo(subItem.route);
                        },
                      ),
                    );
                  }).toList(),
                ),
              );
            } else {
              // Regular side menu item.
              return Obx(
                () => SideMenuItem(
                  itemName: item.name,
                  isSelected: menuController.isActive(item.name),
                  onTap: () {
                    if (item.route == authenticationPageRoute) {
                      Get.offAllNamed(authenticationPageRoute);
                      menuController.changeActiveItemTo(homePageDisplayName);
                    }
                    if (!menuController.isActive(item.name)) {
                      menuController.changeActiveItemTo(item.name);
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                      }
                      navigationController.navigateTo(item.route);
                    }
                  },
                ),
              );
              // return SizedBox();
            }
          }).toList(),
        ),
      ),
    );
  }
}

///side menu item
class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  final bool isSelected;

  const SideMenuItem({
    super.key,
    required this.itemName,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: isSelected ? Colors.indigo : Colors.transparent,
        child: ResponsiveWidget.isCustomSize(context)
            ? VerticalMenuItem(
                itemName: itemName,
                onTap: onTap,
              )
            : HorizontalMenuItem(
                itemName: itemName,
                onTap: onTap,
              ),
      ),
    );
  }
}

///vertical menu item
class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;

  const VerticalMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? CupertinoColors.black
              : Colors.transparent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: menuController.isHovering(itemName)
                        ? Colors.white
                        : white,
                  ),
                )
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: Colors.white,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ],
          ),
        ),
      ),
    );
  }
}

///horizontal menu item
class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;

  const HorizontalMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? CupertinoColors.black
              : Colors.transparent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: menuController.isHovering(itemName) ? white : white,
                  ),
                )
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: white,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ],
          ),
        ),
      ),
    );
  }
}
