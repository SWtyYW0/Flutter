import 'package:flutter/material.dart';
import 'package:ros_1IK/examples/argument_routres/anonymous_routes_with_params.dart';
import 'package:ros_1IK/examples/argument_routres/onGenerateRoute.dart';

class ExampleArgumentRoutes extends StatelessWidget {
  const ExampleArgumentRoutes({super.key});

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
          children: [
            AnonymousRoutesWithParams(),
            OnGenerateRoute()
          ],
        ),
      ),
    );
  }
}