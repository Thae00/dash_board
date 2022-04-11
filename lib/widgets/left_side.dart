import 'package:dash_board/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'icon_and_text.dart';

class LeftSide extends StatelessWidget {
  final SvgPicture svgIcon;
  final String numText;
  final String strText;
  LeftSide({Key? key,required this.svgIcon, required this.numText, required this.strText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //IconAndText(icon: icon, text: "305", iconColor: Colors.white,),
        svgIcon,
        SizedBox(width: 10,),
        Text(
          numText,style: TextStyle(fontSize: 20,color: Colors.white54),
        ),
        SizedBox(width: 20,),
        VerticalDivider(
          color: Colors.white54, width: Dimensions.width10, //width space of divider
          thickness: 2,
        ),
        Container(
          padding: EdgeInsets.only(left: Dimensions.width10),
          child: Text(strText,style: TextStyle(fontSize: 20,color: Colors.white54),),
        ),
      ],
    );
  }
}
