import 'package:dashboard_v1/routing/routes.dart';
import 'package:get/get.dart';

class LandingPageController extends GetxController {
  static LandingPageController instance = Get.find();
  var activeItem = SiteInfoDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;
}
