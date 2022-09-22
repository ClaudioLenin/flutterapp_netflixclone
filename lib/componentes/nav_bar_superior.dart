import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/imgs/netflix.png",
          width: 30.0,
        ),
        Text(
          "Programas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          "Películas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          "Mi Lista",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    );
  }
}
