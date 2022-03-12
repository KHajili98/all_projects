import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/pages/add_project.dart';
import '../pages/profile.dart';
import 'home_main_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomeMainPage(),
    Profile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeMainPage(); // Our first view in viewport

  // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          elevation: 15,
          backgroundColor: const Color(0xff149cff),
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(AddProject.routeName);
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          color: Colors.white,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            HomeMainPage(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/svg/homeIcon.svg",
                      color: currentTab == 0
                          ? const Color(0xff149cff)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 35,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/svg/personIcon.svg",
                      color: currentTab == 1
                          ? const Color(0xff149cff)
                          : Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
