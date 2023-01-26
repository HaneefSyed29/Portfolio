import 'package:flutter/material.dart';
import 'package:portfolio_website/views/Mobile/MobileHome.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late double screenWidth;
  late double screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 715) {
        return desktopView();
      } else {
        return MobileHome();
      }
    });
  }

  double getImageSize() {
    if (screenWidth > 1600 && screenHeight > 800) {
      return 450;
    } else if (screenWidth > 1300 && screenHeight > 600) {
      return 400;
    } else if (screenWidth > 1000 && screenHeight > 400) {
      return 350;
    } else {
      return 300;
    }
  }

  double getFontSize(bool isHeader) {
    double fontSize = screenWidth > 950 && screenHeight > 550 ? 30 : 25;
    return isHeader ? fontSize * 2.25 : fontSize;
  }

  Widget desktopView() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: screenWidth * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(getFontSize(true)),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  description(getFontSize(false)),
                ],
              )),
          SizedBox(
            width: screenWidth * 0.03,
          ),
          picture(),
        ]);
  }

  Widget header(double fontSize) {
    return RichText(
        text: TextSpan(
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontFamily: 'DMSerifDisplay'),
            children: const <TextSpan>[
          TextSpan(text: "Hi, my name is \n"),
          TextSpan(
              text: "Haneef Syed", style: TextStyle(color: Color(0xff21a179))),
          TextSpan(text: ' !')
        ]));
  }

  Widget description(double fontSize) {
    return const Text(
      textAlign: TextAlign.justify,
      "I am a Flutter developer experienced in building cross-platform mobile apps. Proficient in Dart, APIs, and design, I deliver seamless user experiences. I am always looking to improve my skills and stay up-to-date with the latest trends and technologies in the field of mobile app development.",
      style: TextStyle(
          color: Colors.white54, fontFamily: 'DMSerifDisplay', fontSize: 16),
    );
  }

  Widget picture() {
    return SizedBox(
      height: getImageSize(),
      width: getImageSize(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: const Color(0xff21a179)),
          borderRadius: BorderRadius.all(Radius.circular(getImageSize() / 2)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(getImageSize() / 2),
          child: Image.asset(
            "assets/images/profile.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
