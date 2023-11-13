import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice_7/pages/home_page.dart';
import 'package:practice_7/pages/map_page.dart';
import 'package:practice_7/pages/profile/profile_page.dart';
import 'package:practice_7/pages/qr/qr_page.dart';





class NavigatePage extends StatefulWidget {
  const NavigatePage({super.key});

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  final List<Widget> _pages = [
    ProfilePage(),
    QrPage(),
    MapPage(),
    HomePage(),
  ];
  int _currentIndex = 0;
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      //body: _pages[_currentIndex],
       appBar: AppBar(
        title: Text('Application'),
        backgroundColor: Color.fromRGBO(176, 146, 106,1) // Замените на ваш заголовок
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromRGBO(176, 146, 106,1)),
              accountName: Text('Motivator'),
              accountEmail: Text('${user?.email}'),
              currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage('assets/images/motivation.png'), // Замените на путь к вашей картинке
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_4_rounded, color: Color.fromRGBO(112, 98, 51, 1.0)),
              title: Text('Профиль'),

              onTap: () {
                setState(() {
                  _currentIndex = 0; // Профиль
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.qr_code_scanner, color: Color.fromRGBO(112, 98, 51, 1.0)),
              title: Text('QR-карта'),
              onTap: () {
                setState(() {
                  _currentIndex = 1; // QR-код
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.add_location, color: Color.fromRGBO(112, 98, 51, 1.0)),
              title: Text('Карта'),
              onTap: () {
                setState(() {
                  _currentIndex = 2; // Карта
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
