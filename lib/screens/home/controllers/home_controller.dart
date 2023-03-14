import 'package:get/get.dart';

class HomeController extends GetxController {
  String balance = 'R\$ 100.000,36';
  bool eyeValue = true;

  void showValue() {
    eyeValue = !eyeValue;
    update();
  }
}
