import 'package:flutter/material.dart';
import './home.dart' as home;
import './room.dart' as room;
import './menu.dart' as menu;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Main(),
    title: "Kontrakanku",
  ));
}

class Main extends StatefulWidget {

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          room.Room(),
          home.Home(),
          menu.Menu()
        ],
      ),

      bottomNavigationBar: Material(
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.room),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}