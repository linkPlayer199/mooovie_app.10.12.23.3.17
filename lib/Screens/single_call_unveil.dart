import 'package:flutter/material.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/chat_unveil.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class SingleCallUnveil extends StatelessWidget {
  const SingleCallUnveil({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                CustomSizedBox(height: 192),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.4,
                    width: width * 1,
                    child: Image.asset('Assets/circle.png'),
                  ),
                ),
                CustomSizedBox(height: 32),
                BUttonwidget(
                    ontap: () {}, width: width * 0.5, text: ' Single Call'),
                CustomSizedBox(height: 42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BUttonwidget(width: width * 0.4, text: 'VIVAVOCE'),
                    BUttonwidget(text: 'Hang Up')
                  ],
                ),
                CustomSizedBox(height: 42),
                BUttonwidget(text: 'Mute')
              ],
            ),
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
                      CustomSizedBox(height: 294),
                      BUttonwidget(text: "Go", ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatUnveil()));
                      },)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
