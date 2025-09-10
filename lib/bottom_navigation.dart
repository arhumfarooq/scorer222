import 'package:flutter/material.dart';
import 'package:scorer/constants/appimages.dart';
import 'package:scorer/widgets/create_container.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Search Screen")),
    Center(child: Text("Profile Screen")),
    Center(child: Text("Settings Screen")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: Container(
         width: double.infinity, // 👈 fix width hatao
  // height: 200, // jitni height chahiye
  // height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.bottom1),
             // 👈 bg image
            fit: BoxFit.contain,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed, // 👈 4+ items ke liye zaroori
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
             BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Appimages.house1, height: 87, width: 118),
                  CreateContainer(height: 31,text: "Home",),
                
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Appimages.buttonplus, height: 87, width: 118),
                  CreateContainer(height: 31,),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Appimages.game,height: 87, width: 70),
                  CreateContainer(text: "Game",height: 31,),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Appimages.group, height: 87, width: 80),
                  CreateContainer(height: 31,text: "Users",),
                
                ],
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
