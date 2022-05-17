import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/models/overview_info_card_model.dart';
import 'package:dashboard_v1/pages/overview/widgets/info_card%20copy.dart';
import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardBuilder extends StatefulWidget {
  OverviewCardBuilder({Key key}) : super(key: key);
  final OverviewInfoModel overviewInfoModel = OverviewInfoModel();

  @override
  State<OverviewCardBuilder> createState() => _OverviewCardBuilderState();
}

class _OverviewCardBuilderState extends State<OverviewCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, crossAxisSpacing: 5, childAspectRatio: 1.3),
      itemCount: infoData.length,
      itemBuilder: (context, index) {
        return OverallInfoCard(
          bodyColor: secondaryColor,
          arrowIcon: infoDatas[index].arrowIcon,
          arrowIconColor: infoDatas[index].arrowIconColor,
          percentage: infoDatas[index].percentage,
          icon: infoDatas[index].icon,
          iconColor: infoDatas[index].color,
          color: infoDatas[index].color,
          title: infoDatas[index].title,
          quantity: infoDatas[index].quantity,
          colors: [
            infoDatas[index].color.withOpacity(.1).withAlpha(30),
            infoDatas[index].color,
          ],
          spots: infoDatas[index].spots,
        );
      },
    );
  }
}
