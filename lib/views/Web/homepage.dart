import 'package:flutter/material.dart';
import 'package:portfolio_website/views/Mobile/MobileHome.dart';
import 'package:portfolio_website/widgets/bottom_bar.dart';
import 'package:portfolio_website/utils/content_view.dart';
import 'package:portfolio_website/widgets/custom_tab.dart';
import 'package:portfolio_website/views/Web/home_view.dart';
import 'package:portfolio_website/views/Web/WebsiteProject.dart';
//import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../widgets/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //late ItemScrollController itemScrollController;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;
  List<ContentView> contentViews = [
    ContentView(
        tab: const CustomTab(
          title: "ABOUT",
        ),
        content: const HomeView()),
    ContentView(
        tab: const CustomTab(
          title: "PROJECTS",
        ),
        content: const ProjectView()),
  ];

  @override
  void initState() {
    tabController = TabController(length: contentViews.length, vsync: this);
    super.initState();
    //itemScrollController = ItemScrollController();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    topPadding = screenHeight * 0.04;
    bottomPadding = screenHeight * 0.01;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xff300e46), Color(0xff040827)],
      )),
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 715) {
                return desktopView();
              } else {
                return MobileHome();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabController,
          tabs: contentViews.map((e) => e.tab).toList(),
        ),
        Container(
          height: screenHeight * .8,
          child: TabBarView(
            controller: tabController,
            children: contentViews.map((e) => e.content).toList(),
            physics: const AlwaysScrollableScrollPhysics(),
          ),
        ),
        const BottomBar(),
      ],
    );
  }
}
