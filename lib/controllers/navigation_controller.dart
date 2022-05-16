import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MainNavigationController extends GetxController {
  static MainNavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName) {
    return navigationKey.currentState.pushNamed(routeName);
  }

  goBack() => navigationKey.currentState.pop();
}
