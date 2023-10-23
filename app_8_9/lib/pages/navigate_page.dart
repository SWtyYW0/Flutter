import 'package:flutter/material.dart';
import 'package:practice_7/pages/animation_page.dart';
import 'package:practice_7/pages/home_page.dart';
import 'package:practice_7/pages/profile/profile_page.dart';
import 'package:practice_7/pages/third_page.dart';


class NavigatePage extends StatefulWidget {
  const NavigatePage({super.key});

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {

  //states
  final List<Widget> _pages = [
    HomePage(),
    AnimationPage(),
    ThirdPage(),
    ProfilePage()
  ];
  int _currentIndex = 0;

  //interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Начальная страница
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Анимация',
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_football_rounded),
            label: 'Вторая страница',
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Третья страница',
            backgroundColor: Colors.blue
          ),
        ],
        // fixedColor: Colors.blue,
        currentIndex: _currentIndex, 
        selectedItemColor: Colors.black, 
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
