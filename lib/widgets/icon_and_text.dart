import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconAndText extends StatelessWidget {
  final SvgPicture svgIcon;
  final String text;

  IconAndText({
    Key? key,
    required this.svgIcon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          svgIcon,
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: Dimensions.font20,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}