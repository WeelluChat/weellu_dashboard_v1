import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/helpers/local_navigator.dart';
import 'package:dashboard_v1/helpers/responsiveness.dart';
import 'package:dashboard_v1/models/bar_chart_data.dart';
import 'package:dashboard_v1/pages/overview/widgets/chat_analysis_chart.dart';
import 'package:dashboard_v1/pages/overview/widgets/user_profile_card_builder.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_activity_piechart.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_piechart.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_profile_details.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_profile_tab_bar.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/user_profile_tab_item.dart';
import 'package:dashboard_v1/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserProfileDetails(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            UserActivityPieChart(),
            UserPieChart(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: ChatsAnalysisChart(data: BarChartCData.data),
        ),
        // UserGroupsTable(pageController: _pageController),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: UserProfileTabBar(),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 500,
          decoration: BoxDecoration(
            color: secondaryColor,
          ),
          child: userProfileTabNavigator(),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
