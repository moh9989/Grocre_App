import 'package:flutter/material.dart';
import 'package:grocre_app/feature/Menu_screen/menu_screen.dart';
import 'package:grocre_app/feature/Profile_screen/profile_screen.dart';
import 'package:grocre_app/feature/Search_screen/search_screen.dart';
import 'package:grocre_app/feature/favourite_screen/favourite_screen.dart';
import 'package:grocre_app/feature/home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<Widget> screen = [
  HomeScreen(),
  FavouriteScreen(),
  SearchScreen(),
  ProfileScreen(),
  MenuScreen(),
];
int currentIndex = 0; // Changed from double to int

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: "Menu",
          ),
        ],
      ),
      body: screen[currentIndex],
    );
  }
}
