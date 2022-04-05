import 'package:flutter/material.dart';

class ColIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  ColIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Icon(
              icon,
              color: Colors.white,
              size: 45,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white54,
              ),
            ),
      ],
    );
  }
}
