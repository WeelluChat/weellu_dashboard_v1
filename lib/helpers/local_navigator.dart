import 'package:dashboard_template/constants/controllers.dart';
import 'package:dashboard_template/routing/router.dart';
import 'package:dashboard_template/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
