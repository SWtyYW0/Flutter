import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //states

  User? user = FirebaseAuth.instance.currentUser;

  //interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          user != null
            ? Center(child: Text('Email пользователя: ${user?.email}', style: const TextStyle(fontSize: 25),),)
            : const Text('Пользователь не аутентифицирован'),
        ],
      ),
    );
  }
}