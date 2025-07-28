import 'package:flutter/material.dart';
import 'package:grocre_app/feature/favourite_screen/favourite_screen.dart';
import 'package:grocre_app/feature/home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<Widget> screen = [HomeScreen(),FavouriteScreen()];
int currentIndex = 0; // Changed from double to int

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_ethernet),
            label: "settings_ethernet",
          ),
       //   BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
        ],
      ),
      body: screen[currentIndex],
    );
  }
}
