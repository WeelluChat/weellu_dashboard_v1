import 'package:dashboard_v1/pages/appupdate/appupdate.dart';
import 'package:dashboard_v1/pages/authentication/authentication.dart';
import 'package:dashboard_v1/pages/broadcasts/broadcasts.dart';
import 'package:dashboard_v1/pages/calls/calls.dart';
import 'package:dashboard_v1/pages/groups/groups.dart';
import 'package:dashboard_v1/pages/help/help.dart';
import 'package:dashboard_v1/pages/landingpage/landingpage.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/blogLinks/blogLinks.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/faqs/faqs.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/features/features.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/images/images.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/plans/plans.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/privacity/privacity.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/processes/processes.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/siteInfo/site_info.dart';
import 'package:dashboard_v1/pages/landingpage/tabs/testmonials/testmonials.dart';
import 'package:dashboard_v1/pages/notifications/notifications.dart';
import 'package:dashboard_v1/pages/overview/overview.dart';
import 'package:dashboard_v1/pages/seo/seo.dart';
import 'package:dashboard_v1/pages/siteimages/siteimages.dart';
import 'package:dashboard_v1/pages/stores/stores.dart';
import 'package:dashboard_v1/pages/stories/stories.dart';
import 'package:dashboard_v1/pages/surveys/surveys.dart';
import 'package:dashboard_v1/pages/users/users.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/user_profile.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case UsersPageRoute:
      return _getPageRoute(const UsersPage());
    case GroupsPageRoute:
      return _getPageRoute(const GroupsPage());
    case BroadcastsPageRoute:
      return _getPageRoute(const BroadcastsPage());
    case CallsPageRoute:
      return _getPageRoute(const CallsPage());
    case SurveysPageRoute:
      return _getPageRoute(const SurveysPage());
    case StoriesPageRoute:
      return _getPageRoute(const StoriesPage());
    case StoresPageRoute:
      return _getPageRoute(const StoresPage());
    case LandingPagePageRoute:
      return _getPageRoute(const LandingPagePage());
    case AppUpdatePageRoute:
      return _getPageRoute(const AppUpdatePage());
    case SiteImagesPageRoute:
      return _getPageRoute(const SiteImagesPage());
    case NotificationsPageRoute:
      return _getPageRoute(const NotificationsPage());
    case SEOPageRoute:
      return _getPageRoute(const SEOPage());
    case HelpPageRoute:
      return _getPageRoute(const HelpPage());

    case SiteInfoPageRoute:
      return _getPageRoute(SiteInfoTab());
    case ImagesPageRoute:
      return _getPageRoute(ImagesTab());
    case FeaturesPageRoute:
      return _getPageRoute(FeaturesTab());
    case PlansPageRoute:
      return _getPageRoute(PlansTab());
    case TestmonialsPageRoute:
      return _getPageRoute(TestmonialsTab());
    case ProcessesPageRoute:
      return _getPageRoute(ProcessesTab());
    case FAQsPageRoute:
      return _getPageRoute(FAQsTab());
    case PrivacityPageRoute:
      return _getPageRoute(PrivacityTab());
    case BlogLinksPageRoute:
      return _getPageRoute(BlogLinksTab());

    case UserProfileScreenPageRoute:
      return _getPageRoute(UserProfile());

    default:
      return _getPageRoute(AuthenticationPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
