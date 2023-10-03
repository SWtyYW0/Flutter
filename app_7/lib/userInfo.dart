import 'user_data.dart';
import 'main.dart';
import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  final UserData userData;

  SecondScreen({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Данные',
        style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0), 
                Text(
                  'Имя пользователя: ${userData.username}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.password_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0), 
                Text(
                  'Пароль: ${userData.password}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons. location_city_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0), 
                Text(
                  'Страна: ${userData.country}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}