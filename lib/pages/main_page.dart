import 'package:dash_board/widgets/each_setting_bar.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
import 'package:dash_board/widgets/tools.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      size: 50,
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
                      size: 50,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 80,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: IconAndText(
                          icon: Icons.pan_tool_alt_sharp,
                          iconColor: Colors.white,
                          text: "Department Jobs"),
                    ),
                    VerticalDivider(
                      color: Colors.white54, width: 10, //width space of divider
                      thickness: 2, //thickness of divier line
                      indent: 10, //Spacing at the top of divider.
                      endIndent: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: IconAndText(
                          icon: Icons.people_alt_outlined,
                          iconColor: Colors.white54,
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
                icon: Icons.question_mark,
                text: '2',
                image: AssetImage("assets/logo/learn.png"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 1,
              ),
              EachSettingBar(
                icon: Icons.pan_tool_alt_outlined,
                text: '1',
                image: AssetImage("assets/logo/bear.jpg"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 1,
              ),
              EachSettingBar(
                icon: Icons.lock_clock,
                text: '2',
                image: AssetImage("assets/logo/ba.png"),
              ),
              Container(
                color: Colors.white10, //width space of divider
                height: 2,
              ),
              Tools(),
            ],
          ),
        ),
      ),
    );
  }
}
