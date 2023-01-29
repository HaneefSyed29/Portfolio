import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/utils/Method.dart';
import 'package:portfolio_website/widgets/custom_icon_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 2,
            width: screenWidth * .9,
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: screenHeight * 0.07,
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomIconButton(
                        iconData: FontAwesomeIcons.github,
                        url: 'https://github.com/HaneefSyed29',
                        color: Colors.white),
                    SizedBox(
                      width: screenHeight * 0.021,
                    ),
                    const CustomIconButton(
                        iconData: FontAwesomeIcons.linkedin,
                        url: 'https://www.linkedin.com/in/thehaneefsyed/',
                        color: Colors.blueAccent),
                    SizedBox(
                      width: screenHeight * 0.021,
                    ),
                    SizedBox(
                      height: screenHeight,
                      child: IconButton(
                        icon: Icon(
                          Icons.email,
                          size: screenHeight * 0.055,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          method.launchEmail();
                        },
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Made with Flutter Web \u00a9 2023",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
