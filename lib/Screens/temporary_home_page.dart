import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/medium_choose.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

import 'drive_alert.dart';

class TemporaryHomePage extends StatelessWidget {
  const TemporaryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(color: AppColor.lightGreen),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage('Assets/RingwithBar.jpeg'),
                        fit: BoxFit.fitHeight)),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4.5,
                left: MediaQuery.of(context).size.width / 2.5,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MediumChoose()));
                  },
                  child: Text(
                    'Car',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          CustomSizedBox(height: 21),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DriveAlert()),
              );
            },
            child: Text(
              'MOOVY km/h 17',
              style: temporary,
            ),
          ),
          CustomSizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BUttonwidget(
                text: 'Menu',
                ontap: (() {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MediumChoose()),
                  // );
                }),
              ),
              BUttonwidget(text: 'Chat'),
            ],
          ),
          CustomSizedBox(height: 11),
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
