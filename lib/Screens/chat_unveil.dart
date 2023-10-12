import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/singlr_call_unveiled.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/circle_widget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class ChatUnveil extends StatelessWidget {
  const ChatUnveil({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomSizedBox(
                height: 123,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleWidget(),
                  CircleWidget(),
                ],
              ),
              CustomSizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleWidget(),
                  CircleWidget(),
                ],
              ),
              CustomSizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleWidget(),
                  CircleWidget(),
                ],
              ),
              CustomSizedBox(height: 121),
              Text(
                "User1",
                style: ColorConst.user,
              ),
              CustomSizedBox(height: 27),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      color: ColorConst.greyButtonBgColor,
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Flexible(child: SizedBox(height: 30)),
                      Flexible(child: SizedBox(height: 10)),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => GroupChat()));
                            },
                            child: Text(
                              '    Text',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.7,
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  height: height,
                  width: width * 1,
                  color: AppColor.bgcolor,
                  child: Column(
                    children: [
                      CustomSizedBox(height: 94),
                      Text(
                        "User 1 ",
                        style: ColorConst.headingStyle2,
                      ),
                      CustomSizedBox(height: 94),
                      Text(
                        "Ask this User to unveil itself!",
                        style: ColorConst.headingStyle2,
                      ),
                      CustomSizedBox(height: 194),
                      BUttonwidget(
                        text: "Go",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingleCallUnveiled()));
                        },
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
