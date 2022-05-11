import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function onTap;
  const InfoCardSmall(
      {Key key,
      this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? light : lightGrey, width: .5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: title,
                  size: 24,
                  weight: FontWeight.w300,
                  color: isActive ? light : lightGrey),
              CustomText(
                  text: value,
                  size: 24,
                  weight: FontWeight.bold,
                  color: isActive ? light : lightGrey),
            ],
          ),
        ),
      ),
    );
  }
}
