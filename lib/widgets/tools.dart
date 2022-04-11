import 'package:dash_board/utils/dimensions.dart';
import 'package:dash_board/widgets/col_iconText.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/left_side.dart';
import 'package:dash_board/widgets/text_and_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 5, 70, 124),
          child: ColIconText(svgIcon: SvgPicture.asset("assets/icons/wrench.svg", width: Dimensions.iconSize30, color: Colors.white,), text: "baba"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 217, 149, 12),
          child: ColIconText(svgIcon: SvgPicture.asset("assets/icons/time.svg", width: Dimensions.iconSize30, color: Colors.white,), text: "Dadar"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: Dimensions.height5),
          color: Color.fromARGB(255, 5, 104, 8),
          child: ColIconText(svgIcon: SvgPicture.asset("assets/icons/check.svg", width: Dimensions.iconSize30, color: Colors.white,), text: "Cacar"),
        ),
        IconAndText(svgIcon: SvgPicture.asset("assets/icons/time.svg", width: Dimensions.iconSize40, color: Colors.white,), text: "305",),
        SizedBox(width: 15,),
        Container(
          width: 2,
          color: Colors.white54,
          height: Dimensions.height30,
        ),
        Container(
          padding: EdgeInsets.only(left: Dimensions.width10),
          child: Text("Question",style: TextStyle(fontSize: Dimensions.font20,color: Colors.white54),),
        ),
      ],
    );
  }
}
