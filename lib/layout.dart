import 'package:dashboard_template/helpers/responsiveness.dart';
import 'package:dashboard_template/widgets/large_screen.dart';
import 'package:dashboard_template/widgets/side_menu.dart';
import 'package:dashboard_template/widgets/small_screen.dart';
import 'package:dashboard_template/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
