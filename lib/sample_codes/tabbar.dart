import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/sample_codes/tab_screens/home.dart';
import 'package:flutter_application_1/sample_codes/tab_screens/more.dart';
import 'package:flutter_application_1/sample_codes/tab_screens/profile.dart';
import 'package:flutter_application_1/sample_codes/tab_screens/tasks.dart';
import 'package:flutter_application_1/sample_codes/tab_screens/watchlist.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({super.key});

  @override
  State<TabbarExample> createState() => TabbarExampleState();
}

class TabbarExampleState extends State<TabbarExample> {
  int currentTab = 0;
  List<Widget> screens = [
    const Home(),
    const WatchList(),
    const More(),
    const Profile(),
    const Tasks()
  ];
  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Positioned.fill(child: currentScreen),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 2, left: 2, right: 2),
        child: FloatingActionButton(
          onPressed: navigateToMore,
          backgroundColor: Colors.purple, // Custom background color
          elevation: 10, // Elevation to give it a shadow effect
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30), // Rounded corners (optional)
          ),
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentScreen = const Home();
                      });
                    },
                    child: const Column(
                      children: [Icon(Icons.home), Text("Home")],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentScreen = const WatchList();
                      });
                    },
                    child: const Column(
                      children: [Icon(Icons.lock_clock), Text("WatchList")],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentScreen = const Profile();
                      });
                    },
                    child: const Column(
                      children: [Icon(Icons.person), Text("Profile")],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentScreen = const Tasks();
                      });
                    },
                    child: const Column(
                      children: [Icon(Icons.task), Text("Tasks")],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width /
                2.14, // Adjust the position horizontally
            bottom: 22.5, // Position text at the bottom
            child: GestureDetector(
              onTap: navigateToMore,
              child: const Text(
                'More',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToMore() {
    setState(() {
      currentScreen = const More();
    });
  }
}
