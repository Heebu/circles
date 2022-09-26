import 'package:bottom_bar/bottom_bar.dart';
import 'package:circles/Screens/Call/calls.dart';
import 'package:circles/Screens/Camera/camera.dart';
import 'package:circles/Screens/ChatScreen/chat_screen.dart';
import 'package:circles/Screens/StoriesScreen/stories.dart';
import 'package:flutter/material.dart';

import 'Screens/ProfileSettings/profile.dart';
import 'Widgets/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int _currentPage = 1;
final _pageController = PageController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          Camera(),
          ChatScreen(),
          Stories(),
          Profile(),
          Call(),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: Colors.purpleAccent.shade700,
        showActiveBackgroundColor: true,
        curve: accelerateEasing,
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          //Camera
          BottomBarItem(
            icon: const Icon(Icons.camera),
            title: const Text('Camera'),
            activeColor: AppColor.activeIconColor,
            inactiveColor: AppColor.inActiveIconColor,
          ),

          //Chats
          BottomBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Chats'),
            activeColor: AppColor.activeIconColor,
            inactiveColor: AppColor.inActiveIconColor,
          ),

          //Stories
          BottomBarItem(
            icon: const Icon(Icons.perm_media_rounded),
            title: const Text('Stories'),
            activeColor: AppColor.activeIconColor,
            inactiveColor: AppColor.inActiveIconColor,
          ),

          //profile
          BottomBarItem(
            icon: const Icon(Icons.person_pin),
            title: const Text('Profile'),
            activeColor: AppColor.activeIconColor,
            inactiveColor: AppColor.inActiveIconColor,
          ),

          //Calls
          BottomBarItem(
            icon: const Icon(Icons.call),
            title: const Text('Call'),
            activeColor: AppColor.activeIconColor,
            inactiveColor: AppColor.inActiveIconColor,
          ),
        ],
      ),
    );
  }
}
