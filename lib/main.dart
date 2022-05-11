import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/controllers/menu_controller.dart';
import 'package:dashboard_v1/controllers/navigation_controller.dart';
import 'package:dashboard_v1/layout.dart';
import 'package:dashboard_v1/pages/404/error_page.dart';
import 'package:dashboard_v1/pages/authentication/authentication.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: lightGrey),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
    );
  }
}
