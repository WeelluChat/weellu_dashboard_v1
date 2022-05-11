import 'package:dashboard_v1/constants/style.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: secondaryColor.withOpacity(.1),
              blurRadius: 12),
        ],
      ),
    );
  }
}
