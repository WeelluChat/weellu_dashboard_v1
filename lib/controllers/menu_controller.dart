import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case UsersPageDisplayName:
        return _customIcon(Icons.person, itemName);
      case GroupsPageDisplayName:
        return _customIcon(Icons.people, itemName);
      case BroadcastsPageDisplayName:
        return _customIcon(FlutterIcons.megaphone_ent, itemName);
      case CallsPageDisplayName:
        return _customIcon(Icons.phone_in_talk_sharp, itemName);
      case SurveysPageDisplayName:
        return _customIcon(Icons.query_stats_outlined, itemName);
      case StoriesPageDisplayName:
        return _customIcon(Icons.motion_photos_on, itemName);
      case StoresPageDisplayName:
        return _customIcon(Icons.shopping_cart, itemName);
      case LandingPagePageDisplayName:
        return _customIcon(Icons.settings_outlined, itemName);
      case AppUpdatePageDisplayName:
        return _customIcon(Icons.system_update, itemName);
      case SiteImagesPageDisplayName:
        return _customIcon(Icons.image_search, itemName);
      case NotificationsPageDisplayName:
        return _customIcon(Icons.notifications_active, itemName);
      case SEOPageDisplayName:
        return _customIcon(Icons.bar_chart_rounded, itemName);
      case HelpPageDisplayName:
        return _customIcon(Icons.help_outline, itemName);
      case AuthenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: light);
    return Icon(icon, color: isHovering(itemName) ? light : lightGrey);
  }
}
