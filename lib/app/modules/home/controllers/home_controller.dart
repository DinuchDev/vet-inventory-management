import 'package:get/get.dart';

class HomeController extends GetxController {
  var salesActivity = {
    'Qty to be Packed': 0.obs,
    'Pkgs to be Shipped': 0.obs,
    'Pkgs to be Delivered': 0.obs,
    'Qty to be Invoiced': 0.obs,
  };

  var productDetails = {
    'Low Stock Items': 0.obs,
    'All Item Groups': 0.obs,
    'All Items': 0.obs,
  };

  final count = 0.obs;



  void increment() => count.value++;
  void decrement() => count.value--;
}
