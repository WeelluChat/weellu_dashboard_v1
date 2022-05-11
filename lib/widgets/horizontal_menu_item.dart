import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const HorizontalMenuItem({Key key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 6,
                  height: 40,
                  color: light,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(
                width: _width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color:
                      menuController.isHovering(itemName) ? light : lightGrey,
                ))
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: light,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ]),
          )),
    );
  }
}
