import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/routing/router.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() => Navigator(
      key: mainNavigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );

Navigator tabNavigator() => Navigator(
      key: landingTabNavigationController.navigationKey,
      initialRoute: SiteInfoPageRoute,
      onGenerateRoute: generateRoute,
    );
