import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/temporary_home_page.dart';
import 'package:mooovie_app/Widgets/circle_widget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class ChatBis extends StatelessWidget {
  const ChatBis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          CustomSizedBox(height: 21),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TemporaryHomePage()));
                        },
                        child: Text(
                          '    Explanation',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
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
    );
  }
}
