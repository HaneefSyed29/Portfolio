import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/Method.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, required this.controller, required this.tabs})
      : super(key: key);

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    double screenWidth = MediaQuery.of(context).size.width;
    double tabBarScaling = screenWidth > 1400
        ? 0.2
        : screenWidth > 1100
            ? 0.2
            : 0.35;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "<Haneef/>",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 36,
                fontFamily: 'DancingScript'),
          ),
          Container(
            width: screenWidth * tabBarScaling,
            child: Theme(
                data: ThemeData(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: TabBar(
                  controller: controller,
                  tabs: tabs,
                  indicatorColor: const Color(0xff21a179),
                )),
          ),
          SizedBox(
            height: 45,
            width: 110,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 8.0,
                  side: const BorderSide(width: 1, color: Colors.white),
                  backgroundColor: const Color(0xff21a179),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  method.openURL(
                      "https://drive.google.com/file/d/1J5V0uy7TSHcfF-O4aN1W9SQYPMH0a8eT/view?usp=share_link");
                },
                child: const Text(
                  "RESUME",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
