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
            ontab: () {
              method.openURL("https://github.com/HaneefSyed29/Blogify");
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
            ontab: () {},
            projectDesc: "Portfolio Website. ",
            projectTitle: "Devfolio",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "Web",
          ),
          FeatureProject(
            imagePath: "assets/images/project3.png",
            ontab: () {
              method.openURL("https://github.com/HaneefSyed29/NewsGenix");
            },
            projectDesc:
                "Simple and Responsive News App using NewsApi provided by newsapi.org",
            projectTitle: "NewsGenix - Daily News Updates",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "News API",
          ),
          FeatureProject(
            imagePath: "assets/images/project4.png",
            ontab: () {
              method.openURL("https://github.com/HaneefSyed29/Wally");
            },
            projectDesc:
                "Simple and Responsive Wallpaper App using Pexels API.",
            projectTitle: "Wally - Wallpaper App",
            tech1: "Dart",
            tech2: "Flutter",
            tech3: 'Pexels API',
          ),
          FeatureProject(
            imagePath: "assets/images/project5.png",
            ontab: () {
              method.openURL("https://github.com/HaneefSyed29/OnBoard");
            },
            projectDesc: "OnBoarding Screens Using PageController. ",
            projectTitle: "OnBoard UI.",
            tech1: "Flutter",
            tech2: "Dart",
            tech3: "Flutter UI",
          ),
          FeatureProject(
            imagePath: "assets/images/project6.png",
            ontab: () {
              method.openURL("https://github.com/HaneefSyed29/Tic-Tac-Toe");
            },
            projectDesc: "A Easy To Play Tic-Tac-Toe Game with Simple UI. ",
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
