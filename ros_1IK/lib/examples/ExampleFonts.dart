import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'ShadowsInto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Fonts'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Roboto font',
                style: TextStyle(
                  // fontFamily: 'Roboto',
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              const Text(
                'ShadowsInto font',
                style: TextStyle(fontSize: 30, fontFamily: 'ShadowsInto'),
              ),
              Text(
                'Google font',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}