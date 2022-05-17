import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard_v1/pages/overview/widgets/chats_bar_chart.dart';
import 'package:flutter/material.dart';

class ChatsAnalysisChart extends StatelessWidget {
  const ChatsAnalysisChart({
    Key key,
    @required this.data,
  }) : super(key: key);

  final List<ChatsSeries> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
      height: MediaQuery.of(context).size.height / 2.6,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text('Media Sharing in Chats',
                style: TextStyle(
                  fontSize: 25,
                )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(bottom: 10, left: 15),
                decoration: BoxDecoration(
                  color: bgColor.withOpacity(.4),
                ),
                height: 300,
                width: MediaQuery.of(context).size.width / 1.8,
                child: ChartsChart(data: data),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
