import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Views/UserShop.dart';
import 'package:instagram_ui_clone/Views/User_Home.dart';
import 'package:instagram_ui_clone/Views/User_Search.dart';
import 'User_reels.dart';
import 'User_Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserProfile(),


  ];
  int selected_index = 0;
  void colorChange(int index){
    setState(() {
      selected_index = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: colorChange,
        currentIndex: selected_index,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search) , label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection) , label: "reels"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle) , label: "Profile"),

      ]),
    );
  }
}
