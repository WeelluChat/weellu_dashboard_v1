const RootRoute = '/';

const OverViewPageDisplayName = 'Overview';
const OverViewPageRoute = '/overview';

const AuthenticationPageDisplayName = 'Logout';
const AuthenticationPageRoute = '/auth';

const UsersPageDisplayName = 'Users';
const UsersPageRoute = '/users';

const GroupsPageDisplayName = 'Groups';
const GroupsPageRoute = '/groups';

const BroadcastsPageDisplayName = 'Broadcasts';
const BroadcastsPageRoute = '/broadcasts';

const CallsPageDisplayName = 'Calls';
const CallsPageRoute = '/calls';

const SurveysPageDisplayName = 'Surveys';
const SurveysPageRoute = '/surveys';

const StoriesPageDisplayName = 'Stories';
const StoriesPageRoute = '/stories';

const StoresPageDisplayName = 'Stores';
const StoresPageRoute = '/stores';

const LandingPagePageDisplayName = 'Landing Page';
const LandingPagePageRoute = '/landing Page';

const AppUpdatePageDisplayName = 'App Update';
const AppUpdatePageRoute = '/appUpdate';

const SiteImagesPageDisplayName = 'Site Images';
const SiteImagesPageRoute = '/siteImages';

const NotificationsPageDisplayName = 'Notifications';
const NotificationsPageRoute = '/notifications';

const SEOPageDisplayName = 'SEO';
const SEOPageRoute = '/seo';

const HelpPageDisplayName = 'Help & Terms';
const HelpPageRoute = '/help';

const SiteInfoDisplayName = 'Site Info';
const SiteInfoPageRoute = '/siteInfo';

const ImagesDisplayName = 'Images';
const ImagesPageRoute = '/images';

const FeaturesDisplayName = 'Features';
const FeaturesPageRoute = '/features';

const PlansDisplayName = 'Plans';
const PlansPageRoute = '/plans';

const TestmonialsDisplayName = 'Testmonials';
const TestmonialsPageRoute = '/testmonials';

const ProcessesDisplayName = 'Processes';
const ProcessesPageRoute = '/processes';

const FAQsDisplayName = 'FAQs';
const FAQsPageRoute = '/faqs';

const PrivacityDisplayName = 'Privacity';
const PrivacityPageRoute = '/privacity';

const BlogLinksDisplayName = 'Blog Links';
const BlogLinksPageRoute = '/blogLinks';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(UsersPageDisplayName, UsersPageRoute),
  MenuItem(GroupsPageDisplayName, GroupsPageRoute),
  MenuItem(BroadcastsPageDisplayName, BroadcastsPageRoute),
  MenuItem(CallsPageDisplayName, CallsPageRoute),
  MenuItem(SurveysPageDisplayName, SurveysPageRoute),
  MenuItem(StoriesPageDisplayName, StoriesPageRoute),
  MenuItem(StoresPageDisplayName, StoresPageRoute),
  MenuItem(LandingPagePageDisplayName, LandingPagePageRoute),
  MenuItem(AppUpdatePageDisplayName, AppUpdatePageRoute),
  MenuItem(SiteImagesPageDisplayName, SiteImagesPageRoute),
  MenuItem(NotificationsPageDisplayName, NotificationsPageRoute),
  MenuItem(SEOPageDisplayName, SEOPageRoute),
  MenuItem(HelpPageDisplayName, HelpPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];

class LandingPageTab {
  final String name;
  final String route;

  LandingPageTab(this.name, this.route);
}

List<LandingPageTab> landingPageTabs = [
  LandingPageTab(SiteInfoDisplayName, SiteInfoPageRoute),
  LandingPageTab(ImagesDisplayName, ImagesPageRoute),
  LandingPageTab(FeaturesDisplayName, FeaturesPageRoute),
  LandingPageTab(PlansDisplayName, PlansPageRoute),
  LandingPageTab(TestmonialsDisplayName, TestmonialsPageRoute),
  LandingPageTab(ProcessesDisplayName, ProcessesPageRoute),
  LandingPageTab(FAQsDisplayName, FAQsPageRoute),
  LandingPageTab(PrivacityDisplayName, PrivacityPageRoute),
  LandingPageTab(BlogLinksDisplayName, BlogLinksPageRoute),
];
