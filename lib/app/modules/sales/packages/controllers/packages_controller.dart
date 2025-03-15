import 'package:get/get.dart';

class PackagesController extends GetxController {
  var notShipped = <String>[].obs;
  var shipped = <String>[].obs;
  var delivered = <String>[].obs;

  void addPackage(String package) {
    notShipped.add(package);
    shipped.add(package);
    delivered.add(package);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
