import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/helpers/responsiveness.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_profile_tab_item.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileTabBar extends StatelessWidget {
  const UserProfileTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryColor),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: userProfileTabs
              .map((item) => Expanded(
                    child: UserProfileTabItem(
                      itemName: item.name,
                      onTap: () {
                        if (!userProfileController.isActive(item.name)) {
                          userProfileController.changeActiveitemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          print(item.route);
                          print(item.name);
                          userProfileTabController.navigateTo(item.route);
                        }
                      },
                    ),
                  ))
              .toList()),
    );
  }
}
