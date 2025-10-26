
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.store),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
