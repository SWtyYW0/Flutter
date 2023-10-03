import 'package:flutter/material.dart';
import 'package:ros_1IK/examples/routes/anonymous_routes.dart';
import 'package:ros_1IK/examples/routes/named_routes.dart';

class ExampleRoutes extends StatelessWidget {
  const ExampleRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            NamedRoutes(),
            AnonymousRoutes()
          ],
        ),
      ),
    );
  }
}