import 'package:dashboard_v1/pages/appupdate/appupdate.dart';
import 'package:dashboard_v1/pages/authentication/authentication.dart';
import 'package:dashboard_v1/pages/broadcasts/broadcasts.dart';
import 'package:dashboard_v1/pages/calls/calls.dart';
import 'package:dashboard_v1/pages/clients/clients.dart';
import 'package:dashboard_v1/pages/drivers/drivers.dart';
import 'package:dashboard_v1/pages/groups/groups.dart';
import 'package:dashboard_v1/pages/help/help.dart';
import 'package:dashboard_v1/pages/landingpage/landingpage.dart';
import 'package:dashboard_v1/pages/notifications/notifications.dart';
import 'package:dashboard_v1/pages/overview/overview.dart';
import 'package:dashboard_v1/pages/seo/seo.dart';
import 'package:dashboard_v1/pages/siteimages/siteimages.dart';
import 'package:dashboard_v1/pages/stores/stores.dart';
import 'package:dashboard_v1/pages/stories/stories.dart';
import 'package:dashboard_v1/pages/surveys/surveys.dart';
import 'package:dashboard_v1/pages/users/users.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case UsersPageRoute:
      return _getPageRoute(UsersPage());
    case GroupsPageRoute:
      return _getPageRoute(GroupsPage());
    case BroadcastsPageRoute:
      return _getPageRoute(BroadcastsPage());
    case CallsPageRoute:
      return _getPageRoute(CallsPage());
    case SurveysPageRoute:
      return _getPageRoute(SurveysPage());
    case StoriesPageRoute:
      return _getPageRoute(StoriesPage());
    case StoresPageRoute:
      return _getPageRoute(StoresPage());
    case LandingPagePageRoute:
      return _getPageRoute(LandingPagePage());
    case AppUpdatePageRoute:
      return _getPageRoute(AppUpdatePage());
    case SiteImagesPageRoute:
      return _getPageRoute(SiteImagesPage());
    case NotificationsPageRoute:
      return _getPageRoute(NotificationsPage());
    case SEOPageRoute:
      return _getPageRoute(SEOPage());
    case HelpPageRoute:
      return _getPageRoute(HelpPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(AuthenticationPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
