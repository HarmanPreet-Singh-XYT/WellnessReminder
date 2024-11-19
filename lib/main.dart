import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:sit_reminder/progress/progress.dart';
import 'package:sit_reminder/home/home.dart';
import 'package:sit_reminder/settings/settings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea( // Wrap the body in SafeArea
          child: IndexedStack(
            index: _selectedIndex,
            children:const [
              Home(),
              Center(child: Text("Coming Soon", style: TextStyle(color: Colors.white))),
              Progress(),
              Settings(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: const Color.fromARGB(255, 28, 28, 28),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color(0xffA9A9A9),
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(LucideIcons.home,size: 16,), label: "Home"),
              BottomNavigationBarItem(icon: Icon(LucideIcons.dumbbell,size: 16,), label: "Exercise"),
              BottomNavigationBarItem(icon: Icon(LucideIcons.lineChart,size: 16,), label: "Progress"),
              BottomNavigationBarItem(icon: Icon(LucideIcons.settings,size: 16,), label: "Settings"),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 56, // Standard size for FloatingActionButton
          height: 56,
          child: FloatingActionButton(
            shape: const CircleBorder(), // Ensures the button is circular
            backgroundColor: const Color.fromARGB(255, 28, 28, 28), // Button color
            onPressed: () {
              print("Floating Action Button Pressed");
            },
            child: const Icon(Icons.add, color: Colors.white), // Icon inside the button
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}