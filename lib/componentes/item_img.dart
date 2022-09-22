import 'package:flutter/widgets.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/imgs/strangerthings.jpg",
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0)
      ],
    );
  }
}
