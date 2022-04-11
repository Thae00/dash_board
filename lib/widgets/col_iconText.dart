import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColIconText extends StatelessWidget {
  final SvgPicture svgIcon;
  final String text;
  ColIconText({Key? key, required this.svgIcon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            svgIcon,
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: Dimensions.font18,
                color: Colors.white,
              ),
            ),
      ],
    );
  }
}
