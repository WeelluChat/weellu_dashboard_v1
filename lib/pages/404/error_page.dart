import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/404.png', width: 350),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: 'Page not found', size: 24, weight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
