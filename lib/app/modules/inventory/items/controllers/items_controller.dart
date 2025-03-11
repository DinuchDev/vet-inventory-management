import 'package:get/get.dart';

class ItemsController extends GetxController {
  var items = [
    {
      "title": "Item Groups",
      "desc": "Create multiple variants of the same item using Item Groups",
      "button": "New Item Group",
      "image": "assets/images/avatar-profile.png"
    },
    {
      "title": "Items",
      "desc": "Create standalone items and services that you buy and sell",
      "button": "New Item",
      "image": "assets/images/avatar-profile.png"
    },
    {
      "title": "Composite Items",
      "desc": "Group different items together and sell them as a single item",
      "button": "Enable Now",
      "image": "assets/images/avatar-profile.png"
    },
    {
      "title": "Price Lists",
      "desc": "Tweak your item prices for specific contacts or transactions",
      "button": "Enable Now",
      "image": "assets/images/avatar-profile.png"
    },
  ].obs;

  final count = 0.obs;

  void increment() => count.value++;
}
