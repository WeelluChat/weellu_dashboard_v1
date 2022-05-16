import 'package:dashboard_v1/constants/controllers.dart';
import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const TabItem({Key key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Obx(() => Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: landingPageController.isActive(itemName)
                        ? Colors.transparent
                        : Colors.lightBlueAccent,
                  ),
                  top: BorderSide(
                    color: landingPageController.isActive(itemName)
                        ? Colors.lightBlueAccent
                        : Colors.transparent,
                  ),
                  left: BorderSide(
                    color: landingPageController.isActive(itemName)
                        ? Colors.lightBlueAccent
                        : Colors.transparent,
                  ),
                  right: BorderSide(
                    color: landingPageController.isActive(itemName)
                        ? Colors.lightBlueAccent
                        : Colors.transparent,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  itemName,
                  style: TextStyle(
                    color: landingPageController.isActive(itemName)
                        ? Colors.lightBlueAccent
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            // Row(children: [
            //   Visibility(
            //     visible: landingPageController.isHovering(itemName) ||
            //         landingPageController.isActive(itemName),
            //     child: Container(
            //       width: 6,
            //       height: 40,
            //       color: light,
            //     ),
            //     maintainSize: true,
            //     maintainState: true,
            //     maintainAnimation: true,
            //   ),
            //   SizedBox(
            //     width: _width / 80,
            //   ),
            //   if (!landingPageController.isActive(itemName))
            //     Flexible(
            //         child: CustomText(
            //       text: itemName,
            //       color: landingPageController.isHovering(itemName)
            //           ? light
            //           : lightGrey,
            //     ))
            //   else
            //     Flexible(
            //         child: CustomText(
            //       text: itemName,
            //       color: light,
            //       size: 18,
            //       weight: FontWeight.bold,
            //     ))
            // ]),
          )),
    );
  }
}
