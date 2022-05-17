import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/pages/users/widgets/user_profile/widgets/reported_groups_tab.dart';
import 'package:flutter/material.dart';

import 'broadcasts_tab.dart';
import 'groups_tab.dart';
import 'reported_broadcasts_tab.dart';

enum tabs { groups, broadcasts, reportedGroups, reportedBroadcasts }

class UserGroupsTable extends StatefulWidget {
  const UserGroupsTable({
    Key key,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  State<UserGroupsTable> createState() => _UserGroupsTableState();
}

class _UserGroupsTableState extends State<UserGroupsTable> {
  tabs tabIndicator = tabs.groups;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Expanded(
                //   child: Container(
                //     padding: const EdgeInsets.all(15),
                //     child: const Center(child: Text(' ')),
                //     decoration: BoxDecoration(
                //       border: Border(
                //         bottom: const BorderSide(color: Colors.lightBlueAccent),
                //         top: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //         left: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //         right: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(0);
                    setState(() {
                      tabIndicator = tabs.groups;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.groups
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.groups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.groups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.groups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Groups',
                        style: TextStyle(
                          color: tabIndicator == tabs.groups
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(1);
                    setState(() {
                      tabIndicator = tabs.broadcasts;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.broadcasts
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.broadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.broadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.broadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Broadcasts',
                        style: TextStyle(
                          color: tabIndicator == tabs.broadcasts
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(2);
                    setState(() {
                      tabIndicator = tabs.reportedGroups;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.reportedGroups
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.reportedGroups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.reportedGroups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.reportedGroups
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Reported Groups',
                        style: TextStyle(
                          color: tabIndicator == tabs.reportedGroups
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget._pageController.jumpToPage(3);
                    setState(() {
                      tabIndicator = tabs.reportedBroadcasts;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.reportedBroadcasts
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.reportedBroadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.reportedBroadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.reportedBroadcasts
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Reported Broadcasts',
                        style: TextStyle(
                          color: tabIndicator == tabs.reportedBroadcasts
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: const Center(child: Text(' ')),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: const BorderSide(color: Colors.lightBlueAccent),
                        top: BorderSide(
                          color: Colors.transparent,
                        ),
                        left: BorderSide(
                          color: Colors.transparent,
                        ),
                        right: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: widget._pageController,
                children: const [
                  GroupsTab(),
                  BroadcastsTab(),
                  ReportedGroupsTab(),
                  ReportedBroadcastsTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
