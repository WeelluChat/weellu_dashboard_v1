import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
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
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case UsersPageRoute:
        return _customIcon(Icons.person, itemName);
      case GroupsPageRoute:
        return _customIcon(Icons.people, itemName);
      case BroadcastsPageRoute:
        return _customIcon(FlutterIcons.megaphone_ent, itemName);
      case CallsPageRoute:
        return _customIcon(Icons.phone_in_talk_sharp, itemName);
      case SurveysPageRoute:
        return _customIcon(Icons.query_stats_outlined, itemName);
      case StoriesPageRoute:
        return _customIcon(Icons.motion_photos_on, itemName);
      case StoresPageRoute:
        return _customIcon(Icons.shopping_cart, itemName);
      case LandingPagePageRoute:
        return _customIcon(Icons.settings_outlined, itemName);
      case AppUpdatePageRoute:
        return _customIcon(Icons.system_update, itemName);
      case SiteImagesPageRoute:
        return _customIcon(Icons.image_search, itemName);
      case NotificationsPageRoute:
        return _customIcon(Icons.notifications_active, itemName);
      case SEOPageRoute:
        return _customIcon(Icons.bar_chart_rounded, itemName);
      case HelpPageRoute:
        return _customIcon(Icons.help_outline, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
