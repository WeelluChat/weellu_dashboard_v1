import 'package:dashboard_v1/controllers/landingpage_controller.dart';
import 'package:dashboard_v1/controllers/menu_controller.dart';
import 'package:dashboard_v1/controllers/navigation_controller.dart';
import 'package:dashboard_v1/controllers/user_profile_controller.dart';

MenuController menuController = MenuController.instance;
LandingPageController landingPageController = LandingPageController.instance;
MainNavigationController mainNavigationController = MainNavigationController();
MainNavigationController landingTabNavigationController =
    MainNavigationController();
UserProfileController userProfileController = UserProfileController();
