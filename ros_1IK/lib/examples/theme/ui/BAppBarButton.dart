import 'package:flutter/material.dart';

class BottomAppBarButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const BottomAppBarButton({super.key, 
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
