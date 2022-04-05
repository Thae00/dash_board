import 'package:dash_board/widgets/each_setting_bar.dart';
import 'package:dash_board/widgets/icon_and_text.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 15,),
                height: 80,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: IconAndText(
                          icon: Icons.work,
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
                          icon: Icons.work,
                          iconColor: Colors.white54,
                          text: "My Jobs"),
                    ),
                  ],
                ),
              ),
              EachSettingBar(),
            ],
          ),
        ),
      ),
    );
  }
}
