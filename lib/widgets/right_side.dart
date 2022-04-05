import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Icon(Icons.star, color: Colors.white, size: 30,),
          SizedBox(width: 5,),
          CircleAvatar(
            child: Text(
              '1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            backgroundColor: Colors.white,
            radius: 16,
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/logo/learn.png"),
            ),
          ),
        ],
      );
  }
}
