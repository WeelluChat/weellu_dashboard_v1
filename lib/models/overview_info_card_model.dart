import 'package:dashboard_v1/constants/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class OverviewInfoModel {
  IconData arrowIcon;
  Color arrowIconColor;
  int percentage;
  IconData icon;
  String title;
  String totalStorage;
  int quantity;
  // int volumeData;
  // int percentage;
  Color color;
  List<Color> colors;
  List<FlSpot> spots;

  OverviewInfoModel({
    this.arrowIcon,
    this.arrowIconColor,
    this.percentage,
    this.icon,
    this.title,
    this.totalStorage,
    this.quantity,
    // this.volumeData,
    // this.percentage,
    this.color,
    this.colors,
    this.spots,
  });

  OverviewInfoModel.fromJson(Map<String, dynamic> json) {
    arrowIcon = json['arrowIcon'];
    arrowIconColor = json['arrowIconColor'];
    percentage = json['percentage'];
    quantity = json['quantity'];
    title = json['title'];
    // volumeData = json['volumeData'];
    icon = json['icon'];
    totalStorage = json['totalStorage'];
    color = json['color'];
    // percentage = json['percentage'];
    colors = json['colors'];
    spots = json['spots'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['arrowIcon'] = this.arrowIcon;
    data['arrowIconColor'] = this.arrowIconColor;
    data['percentage'] = this.percentage;
    data['quantity'] = this.quantity;
    data['title'] = this.title;
    // data['volumeData'] = this.volumeData;
    data['icon'] = this.icon;
    data['totalStorage'] = this.totalStorage;
    data['color'] = this.color;
    // data['percentage'] = this.percentage;
    data['colors'] = this.colors;
    data['spots'] = this.spots;
    return data;
  }
}

List<OverviewInfoModel> infoDatas =
    infoData.map((item) => OverviewInfoModel.fromJson(item)).toList();

//List<FlSpot> spots = yValues.asMap().entries.map((e) {
//  return FlSpot(e.key.toDouble(), e.value);
//}).toList();

var infoData = [
  {
    "arrowIcon": Icons.arrow_upward,
    "arrowIconColor": Color(0xff00F260),
    "percentage": 20,
    "title": "Message Total",
    "volumeData": 5328,
    "icon": FlutterIcons.message1_ant,
    "quantity": 1980,
    "totalStorage": "- %5",
    "color": Colors.yellow,
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.9,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_upward,
    "arrowIconColor": Color(0xff00F260),
    "percentage": 50,
    "title": "Online Users",
    "volumeData": 5328,
    "icon": FlutterIcons.user_check_fea,
    "quantity": 350,
    "totalStorage": "- %5",
    "color": Color(0xFF00F260),
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_downward,
    "arrowIconColor": Color.fromARGB(255, 228, 37, 37),
    "percentage": 5,
    "title": "Users",
    "volumeData": 1328,
    "icon": FlutterIcons.user_alt_faw5s,
    "quantity": 13,
    "totalStorage": "+ %20",
    "color": primaryColor,
    // "percentage": 35,
    "colors": [
      Color(0xff23b6e6),
      Color(0xff02d39a),
    ],
    "spots": [
      FlSpot(
        1,
        2,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_upward,
    "arrowIconColor": Color(0xff00F260),
    "percentage": 2,
    "title": "Groups",
    "volumeData": 1328,
    "icon": FlutterIcons.group_faw,
    "quantity": 52,
    "totalStorage": "+ %5",
    "color": Color(0xFFFFA113),
    // "percentage": 35,
    "colors": [Color(0xfff12711), Color(0xfff5af19)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        4,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        3,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_downward,
    "arrowIconColor": Color.fromARGB(255, 228, 37, 37),
    "percentage": 13,
    "title": "Calls",
    "volumeData": 1328,
    "icon": Icons.phone_in_talk_sharp,
    "quantity": 123,
    "totalStorage": "+ %8",
    "color": Color(0xFFA4CDFF),
    // "percentage": 10,
    "colors": [Color(0xff2980B9), Color(0xff6DD5FA)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        5,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        6,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_downward,
    "arrowIconColor": Color.fromARGB(255, 228, 37, 37),
    "percentage": 20,
    "title": "Broadcast",
    "volumeData": 1328,
    "icon": FlutterIcons.megaphone_ent,
    "quantity": 25,
    "totalStorage": "+ %8",
    "color": Colors.red,
    // "percentage": 10,
    "colors": [
      Color(0xff93291E),
      Color(0xffED213A),
      Color(0xff2980B9),
      Color(0xff6DD5FA)
    ],
    "spots": [
      FlSpot(
        1,
        3,
      ),
      FlSpot(
        2,
        4,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_upward,
    "arrowIconColor": Color(0xff00F260),
    "percentage": 12,
    "title": "Status",
    "volumeData": 5328,
    "icon": FlutterIcons.statusnet_zoc,
    "quantity": 211,
    "totalStorage": "- %5",
    "color": Colors.purple,
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_downward,
    "arrowIconColor": Color.fromARGB(255, 228, 37, 37),
    "percentage": 31,
    "title": "Stores",
    "volumeData": 5328,
    "icon": FlutterIcons.shopping_cart_ent,
    "quantity": 9,
    "totalStorage": "- %5",
    "color": Colors.cyanAccent,
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_upward,
    "arrowIconColor": Color(0xff00F260),
    "percentage": 20,
    "title": "Users Countries",
    "volumeData": 5328,
    "icon": FlutterIcons.earth_ant,
    "quantity": 1,
    "totalStorage": "- %5",
    "color": Colors.pink,
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
  {
    "arrowIcon": Icons.arrow_downward,
    "arrowIconColor": Color.fromARGB(255, 228, 37, 37),
    "percentage": 1,
    "title": "Surveys",
    "volumeData": 5328,
    "icon": Icons.query_stats_outlined,
    "quantity": 77,
    "totalStorage": "- %5",
    "color": Colors.indigoAccent,
    // "percentage": 78,
    "colors": [Color(0xff0575E6), Color(0xff00F260)],
    "spots": [
      FlSpot(
        1,
        1.3,
      ),
      FlSpot(
        2,
        1.0,
      ),
      FlSpot(
        3,
        1.8,
      ),
      FlSpot(
        4,
        1.5,
      ),
      FlSpot(
        5,
        1.0,
      ),
      FlSpot(
        6,
        2.2,
      ),
      FlSpot(
        7,
        1.8,
      ),
      FlSpot(
        8,
        1.5,
      )
    ]
  },
];

//final List<double> yValues = [
//  2.3,
//  1.8,
//  1.9,
//  1.5,
//  1.0,
//  2.2,
//  1.8,
//  1.5,
//];
