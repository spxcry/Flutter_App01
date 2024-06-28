import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'menu_screen.dart';

class AppMainScreen extends StatelessWidget {
  const AppMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(children: [
        HomeScreen(),
        MenuScreen(),
        //HomeScreen(),
        //HomeScreen(),
        ],),
        bottomNavigationBar: TabBar(tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home',),
          Tab(icon: Icon(Icons.menu), text: 'Menu',),
          Tab(icon: Icon(Icons.message), text: 'Message',),
          Tab(icon: Icon(Icons.settings), text: 'Setting',),
        ]),
      ),
    );
  }
}