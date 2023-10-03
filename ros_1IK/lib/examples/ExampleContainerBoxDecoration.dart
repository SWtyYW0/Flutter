import 'package:flutter/material.dart';

class ExampleContainerBoxDecoration extends StatelessWidget {
  const ExampleContainerBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200, 
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYCvPpydcprIMYo22C2JdMZMuKqvsnkK29QA&usqp=CAU')
                    .image,
                fit: BoxFit.cover),
            // gradient: new LinearGradient(
            //   colors: [Colors.red, Colors.cyan],
            // ),
            // color: Colors.cyan,
            // border: Border.all(
            //   color: Colors.black,
            //   width: 8,
            // ),
            // borderRadius: BorderRadius.circular(15),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 5.0,
                spreadRadius: 5.0,
                offset: Offset(-5, 5),
              )
            ]
        ),
        child: const Text(
          'Panda',
          style: TextStyle(fontSize: 40, color: Colors.white70),
        ) //
      )
    );
  }
}