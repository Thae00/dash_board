import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/left_side.dart';
import 'package:dash_board/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color.fromARGB(255, 5, 70, 124),
          width: 80,
          height: 60,
          child: TextIcon(
            text: 'baba',
            icon: Icons.pan_tool_alt_outlined,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 217, 149, 12),
          width: 80,
          height: 60,
          child: TextIcon(text: 'Dadar', icon: Icons.lock_clock),
        ),
        Container(
          color: Color.fromARGB(255, 5, 104, 8),
          width: 80,
          height: 60,
          child: TextIcon(
            text: 'Cacar:',
            icon: Icons.mark_as_unread_sharp,
          ),
        ),
        Container(
          child: LeftSide(icon: Icons.lock_clock),
        )
      ],
    );
  }
}
