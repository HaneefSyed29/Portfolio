import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/utils/Method.dart';
import 'package:portfolio_website/widgets/CustomText.dart';

import '../../widgets/MobileProject.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Method method = Method();
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff300e46), Color(0xff040827)],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "<H/>",
                        style: TextStyle(
                            fontFamily: 'DancingScript',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ),
                      SizedBox(
                        height: 36,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8.0,
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 3, color: const Color(0xff21a179)),
                    borderRadius: const BorderRadius.all(Radius.circular(150)),
                  ),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(150)),
                      child: Image.asset(
                        "assets/images/profile.png",
                        width: 300,
                        height: 300,
                      )),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  "Haneef Syed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Barlow',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 52,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "I am a Flutter developer experienced in building cross-platform mobile apps. Proficient in Dart, APIs, and design, I deliver seamless user experiences. I am always looking to improve my skills and stay up-to-date with the latest trends and technologies in the field of mobile app development.",
                    style: TextStyle(
                        color: Colors.white60,
                        fontFamily: 'DMSerifDisplay',
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                //Some Things I've Built title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "What I've build",
                      textsize: 26.0,
                      color: const Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: const Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.openURL("https://github.com/HaneefSyed29/Blogify");
                  },
                  image: "assets/images/project1.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.openURL("https://github.com/HaneefSyed29/Portfolio");
                  },
                  image: "assets/images/project2.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.openURL("https://github.com/HaneefSyed29/NewsGenix");
                  },
                  image: "assets/images/project3.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.openURL("https://github.com/HaneefSyed29/Wally");
                  },
                  image: "assets/images/project4.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.openURL("https://github.com/HaneefSyed29/OnBoard");
                  },
                  image: "assets/images/project5.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method
                        .openURL("https://github.com/HaneefSyed29/Tic-Tac-Toe");
                  },
                  image: "assets/images/project6.png",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Color(0xffffA8B2D1),
                        size: 24.0,
                      ),
                      onPressed: () {
                        method.openURL("https://github.com/HaneefSyed29");
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffffA8B2D1),
                        size: 24.0,
                      ),
                      onPressed: () {
                        method.openURL(
                            "https://www.linkedin.com/in/thehaneefsyed/");
                      },
                    ),
                    IconButton(
                        icon: const Icon(Icons.mail),
                        color: const Color(0xffffA8B2D1),
                        iconSize: 24.0,
                        onPressed: () {
                          method.launchEmail();
                        }),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Footer
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.white,
                  child: Text(
                    "Designed & Built by Haneef Syed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
