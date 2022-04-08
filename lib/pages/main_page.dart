import 'package:dash_board/utils/dimensions.dart';
import 'package:dash_board/widgets/circle_clip.dart';
import 'package:dash_board/widgets/col_iconText.dart';
import 'package:dash_board/widgets/each_setting_bar.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFF7898B1),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.list,
                      color: Colors.white,
                      size: Dimensions.iconSize45,
                    ),
                    Text(
                      'DashBorad',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize45,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: Dimensions.height70,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: IconAndText(
                          svgIcon: SvgPicture.asset("assets/icons/briefcase.svg", color: Colors.white,),
                          text: "Department Jobs"),
                    ),
                    VerticalDivider(
                      color: Colors.white54,
                      width: Dimensions.width10, //width space of divider
                      thickness: 2, //thickness of divier line
                      indent: 10, //Spacing at the top of divider.
                      endIndent: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: Dimensions.width20),
                      child: IconAndText(
                          svgIcon: SvgPicture.asset("assets/icons/briefcase.svg", color: Colors.white,),
                          text: "My Jobs"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 1,
              ),
              EachSettingBar(
                svgIcon: SvgPicture.asset("assets/icons/briefcase.svg", color: Colors.white,),
                text: '2',
                image: AssetImage("assets/logo/learn.png"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 1,
              ),
              EachSettingBar(
                svgIcon: SvgPicture.asset("assets/icons/briefcase.svg", color: Colors.white,),
                text: '1',
                image: AssetImage("assets/logo/bear.jpg"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 1,
              ),
              EachSettingBar(
                svgIcon: SvgPicture.asset("assets/icons/briefcase.svg", color: Colors.white,),
                text: '2',
                image: AssetImage("assets/logo/ba.png"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 2,
              ),
              Tools(),
              Expanded(
                child: Container(
                  color: Color(0xff115767),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Stack(
                    children: [
                      Positioned(
                        top: Dimensions.height100,
                        left: Dimensions.width50,
                        child: CircleClip(),
                      ),
                      Positioned(
                        left: Dimensions.width50,
                        right: Dimensions.width50,
                        bottom: Dimensions.height10,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              _bool = !_bool;
                              print(_bool);
                            });
                          },
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: _bool ? CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff115767),
                              child: Container(
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: Dimensions.iconSize50,
                                  color: Colors.white,
                                ),
                              ),
                            ) : Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 8,
                                    blurRadius: 10,
                                    offset: Offset(1, 2),
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xff115767),
                                child: Container(
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    size: Dimensions.iconSize50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.height25,
                        left: Dimensions.width15,
                        child: ColIconText(
                            icon: Icons.description, text: "Description"),
                      ),
                      Positioned(
                        bottom: Dimensions.height25,
                        right: Dimensions.width28,
                        child: ColIconText(
                            icon: Icons.location_on, text: "Location"),
                      ),
                      Positioned(
                        top: Dimensions.height100,
                        left: Dimensions.width100,
                        child: ColIconText(
                            icon: Icons.check_circle, text: "Check"),
                      ),
                      Positioned(
                        top: Dimensions.height100,
                        right: Dimensions.width100,
                        child: ColIconText(icon: Icons.flag, text: "County"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
