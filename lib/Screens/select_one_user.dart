import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/color_constants.dart';
import 'package:mooovie_app/Screens/chat.dart';
import 'package:mooovie_app/Screens/group_call.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';
import 'package:mooovie_app/Widgets/custom_textfield.dart';

class SelectOneUser extends StatelessWidget {
  const SelectOneUser({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          CustomSizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .transparent, // Set the background color to transparent
                  elevation: 0, // Set elevation to 0 to remove the shadow
                ),
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .transparent, // Set the background color to transparent
                  elevation: 0, // Set elevation to 0 to remove the shadow
                ),
                child: Text(
                  'Legal',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(color: AppColor.lightGreen),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      image: const DecorationImage(
                          image: AssetImage('Assets/RingwithBar.jpeg'),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 7.5,
                left: MediaQuery.of(context).size.width / 2.5,
                child: Text(
                  'Car',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          CustomSizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CustomTextField(), CustomTextField()],
          ),
          CustomSizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CustomTextField(), CustomTextField()],
          ),
          CustomSizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CustomTextField()],
          ),
          CustomSizedBox(height: 24),
          BUttonwidget(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chat()),
                );
              },
              width: width * 0.6,
              text: "Call Everybody"),
          CustomSizedBox(height: 16),
          BUttonwidget(width: width * 0.6, text: "Chat Everybody"),
          CustomSizedBox(height: 16),
          BUttonwidget(text: "Change"),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BUttonwidget(width: width * 0.22, text: 'Social'),
              BUttonwidget(width: width * 0.22, text: 'Menu'),
              BUttonwidget(width: width * 0.22, text: 'Folder'),
              BUttonwidget(width: width * 0.22, text: 'Chat'),
            ],
          )
        ],
      ),
    ));
  }
}
