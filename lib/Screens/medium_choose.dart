import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/drive_alert.dart';
import 'package:mooovie_app/Screens/home_moovy_filter.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class MediumChoose extends StatelessWidget {
  const MediumChoose({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(color: AppColor.lightGreen),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage('Assets/RingwithBar.jpeg'),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 11.5,
                left: MediaQuery.of(context).size.width / 89.5,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){ Navigator.push(
                          context, MaterialPageRoute(builder: (context) => HomeMoovyFulter()));},
                      child: Container(
                        color: ColorConst.greyButtonBgColor,
                        height: MediaQuery.of(context).size.height / 14,
                        width: MediaQuery.of(context).size.width / 3,
                        child: Image.asset('Assets/car.png'),
                      ),
                    )
                    // BUttonwidget(
                    //   text: 'Menu',
                    // ),
                    ,
                    SizedBox(
                      width: 123,
                    ),
                    BUttonwidget(text: 'running'),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4.5,
                left: MediaQuery.of(context).size.width / 4.5,
                child: BUttonwidget(text: 'bike'),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.33,
                // right: MediaQuery.of(context).size.width * 0.2,
                left: MediaQuery.of(context).size.width * 0.02,
                child: Row(
                  children: [
                    BUttonwidget(
                      height: height * 0.1,
                      width: width * 0.4,
                      text: 'Public Transport',
                    ),
                    SizedBox(
                      width: 73,
                    ),
                    BUttonwidget(width: width * 0.4, text: 'motorcycle'),
                  ],
                ),
              ),
            ],
          ),
          CustomSizedBox(height: 21),
          Text(
            'MOOVY',
            style: temporary,
          ),
          CustomSizedBox(height: 59),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BUttonwidget(
                text: 'Menu',
                ontap: (() {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DriveAlert()),
                  // );
                }),
              ),
              BUttonwidget(text: 'Chat'),
            ],
          ),
          CustomSizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BUttonwidget(text: 'Social'),
              BUttonwidget(text: 'Folder'),
            ],
          )
        ],
      ),
    );
  }
}
