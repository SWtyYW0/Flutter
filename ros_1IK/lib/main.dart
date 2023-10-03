import 'package:flutter/material.dart';
import 'package:ros_1IK/examples/ExampleArgumentRoutes.dart';
import 'package:ros_1IK/examples/ExampleColumnRow.dart';
import 'package:ros_1IK/examples/ExampleContainerBoxDecoration.dart';
import 'package:ros_1IK/examples/ExampleFonts.dart';
import 'package:ros_1IK/examples/ExampleGridViewPage.dart';
import 'package:ros_1IK/examples/ExampleImage.dart';
import 'package:ros_1IK/examples/ExampleListViewPage.dart';
import 'package:ros_1IK/examples/ExampleRoutes.dart';
import 'package:ros_1IK/examples/ExampleStackPositionedIndexedStack.dart';
import 'package:ros_1IK/examples/ExampleStatefulWidget.dart';
import 'package:ros_1IK/examples/ExampleStatlessWidget.dart';
import 'package:ros_1IK/examples/ExampleThemeStyle.dart';
import 'package:ros_1IK/examples/ExmaplePageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const ExampleStatlessWidget(),
            const ExampleStatefulWidget(),
            const ExampleContainerBoxDecoration(),
            ExampleColumnRow(),
            const LinkToExampleListViewPage(),
            const LinkToExampleGridViewPage(),
            const LinkToExamplePageView(),
            const ExampleStackPositionedIndexedStack(),
            ExampleFonts(),
            const ExampleImage(),
            const ExampleTheme(),
            const ExampleRoutes(),
            const ExampleArgumentRoutes(),
          ],
        ),
      ),
    );
  }
}