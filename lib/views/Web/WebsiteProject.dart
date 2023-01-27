import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/Method.dart';
import 'package:portfolio_website/widgets/FeatureProject.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  Method method = Method();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.08,
          ),
          FeatureProject(
            imagePath: "assets/images/project1.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/Blogify");
            },
            ontaby: (){
              method.openURL("https://youtu.be/3H6-WHohGQM");
            },
            projectDesc:
                "Blogging app using Flutter with the feature of Post Creation and having a user-friendly interface. ",
            projectTitle: "Blogify - SeeMore DoMore",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "Firebase",
          ),
          FeatureProject(
            imagePath: "assets/images/project2.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/Portfolio");
            },
            ontaby: (){
              method.openURL("https://youtu.be/mhJLVT0OqqM");
            },
            projectDesc: "Our portfolio web, built with Flutter, offers a sleek and interactive way to showcase my projects. Navigate through my work with ease, and download my resume. ",
            projectTitle: "Devfolio",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "Web",
          ),
          FeatureProject(
            imagePath: "assets/images/project3.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/NewsGenix");
            },
            ontaby: (){
              method.openURL("https://youtu.be/4b8Kovx-Dqk");
            },
            projectDesc:
                "Stay informed with our news app built using Flutter. With its clean and modern design, easily browse through the latest news stories and stay up-to-date.",
            projectTitle: "NewsGenix - Daily News Updates",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "News API",
          ),
          FeatureProject(
            imagePath: "assets/images/project4.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/Wally");
            },
            ontaby: (){
              method.openURL("https://youtu.be/k4ec04YCITM");
            },
            projectDesc:
                "Transform your device's background with our wallpaper app built using Flutter. Browse our curated collection of high-resolution images. ",
            projectTitle: "Wally - Wallpaper App",
            tech1: "Dart",
            tech2: "Flutter",
            tech3: 'Pexels API',
          ),
          FeatureProject(
            imagePath: "assets/images/project5.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/OnBoard");
            },
            ontaby: (){
              method.openURL("https://youtu.be/UjOYFFDAZhg");
            },
            projectDesc: "Experience a smooth and seamless onboarding process with our onboard screens, built using Flutter. ",
            projectTitle: "OnBoard UI.",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "Flutter UI",
          ),
          FeatureProject(
            imagePath: "assets/images/project6.png",
            ontabg: () {
              method.openURL("https://github.com/HaneefSyed29/Tic-Tac-Toe");
            },
            ontaby: (){
              method.openURL("https://youtu.be/OF5F3DXePPc");
            },
            projectDesc: "Challenge yourself and your friends to a game of Tic-Tac-Toe with our game app built using Flutter, you'll have hours of fun playing one of the classic games. ",
            projectTitle: "Tic-Tac-Toe Game",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: 'Flutter UI',
          ),
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
    );
  }
}
