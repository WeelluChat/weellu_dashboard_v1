import 'package:dashboard_v1/constants/style.dart';
import 'package:flutter/material.dart';

enum tabs {
  siteInfo,
  images,
  features,
  testimonials,
  processes,
  privacity,
  faqs,
  blogLinks,
  plans
}

class LandingPageTables extends StatefulWidget {
  const LandingPageTables({
    Key key,
  }) : super(key: key);

  @override
  State<LandingPageTables> createState() => _LandingPageTablesState();
}

class _LandingPageTablesState extends State<LandingPageTables> {
  tabs tabIndicator = tabs.siteInfo;
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    // widget._pageController.jumpToPage(0);
                    // setState(() {
                    //   tabIndicator = tabs.siteInfo;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.siteInfo
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Site Info',
                        style: TextStyle(
                          color: tabIndicator == tabs.siteInfo
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
                    // widget._pageController.jumpToPage(1);
                    // setState(() {
                    //   tabIndicator = tabs.images;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.images
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Images',
                        style: TextStyle(
                          color: tabIndicator == tabs.images
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
                    // widget._pageController.jumpToPage(2);
                    // setState(() {
                    //   tabIndicator = tabs.features;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.features
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Features',
                        style: TextStyle(
                          color: tabIndicator == tabs.features
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
                    // widget._pageController.jumpToPage(3);
                    // setState(() {
                    //   tabIndicator = tabs.plans;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.plans
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Plans',
                        style: TextStyle(
                          color: tabIndicator == tabs.plans
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
                    // widget._pageController.jumpToPage(4);
                    // setState(() {
                    //   tabIndicator = tabs.testimonials;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.testimonials
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Testimonials',
                        style: TextStyle(
                          color: tabIndicator == tabs.testimonials
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
                    // widget._pageController.jumpToPage(5);
                    // setState(() {
                    //   tabIndicator = tabs.processes;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.processes
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Processes',
                        style: TextStyle(
                          color: tabIndicator == tabs.processes
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
                    // widget._pageController.jumpToPage(6);
                    // setState(() {
                    //   tabIndicator = tabs.faqs;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.faqs
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                          color: tabIndicator == tabs.faqs
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
                    // widget._pageController.jumpToPage(7);
                    // setState(() {
                    //   tabIndicator = tabs.privacity;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.privacity
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Privacity & Terms',
                        style: TextStyle(
                          color: tabIndicator == tabs.privacity
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
                    // widget._pageController.jumpToPage(8);
                    // setState(() {
                    //   tabIndicator = tabs.blogLinks;
                    // });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.transparent
                              : Colors.lightBlueAccent,
                        ),
                        top: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        left: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                        right: BorderSide(
                          color: tabIndicator == tabs.blogLinks
                              ? Colors.lightBlueAccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Blog Links',
                        style: TextStyle(
                          color: tabIndicator == tabs.blogLinks
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
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.lightBlueAccent),
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
          ],
        ),
      ),
    );
  }
}
