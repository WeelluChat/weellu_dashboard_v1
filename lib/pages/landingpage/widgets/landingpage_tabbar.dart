import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/helpers/local_navigator.dart';
import 'package:dashboard_v1/helpers/responsiveness.dart';
import 'package:dashboard_v1/pages/landingpage/widgets/landingpage_tables.dart';
import 'package:dashboard_v1/pages/landingpage/widgets/tab_item.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Settings',
                        style: TextStyle(fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text('English')),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: landingPageTabs
                        .map((item) => Expanded(
                              child: TabItem(
                                itemName: item.name,
                                onTap: () {
                                  if (!landingPageController
                                      .isActive(item.name)) {
                                    landingPageController
                                        .changeActiveitemTo(item.name);
                                    if (ResponsiveWidget.isSmallScreen(
                                        context)) {
                                      Get.back();
                                    }
                                    landingTabNavigationController
                                        .navigateTo(item.route);
                                  }
                                },
                              ),
                            ))
                        .toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
