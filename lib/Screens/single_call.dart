import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Screens/home_moovy_filter.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class SingleCall extends StatelessWidget {
  const SingleCall({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset('Assets/circle.png'),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.45,
                  // left: MediaQuery.of(context).size.width / 89.5,
                  child: Container(
                    child: Text(
                      'IMG',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            BUttonwidget(width: width * 0.7, text: "Single Call"
            
            ,ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeMoovyFulter()),
                    );
            },
            ),
            CustomSizedBox(height: 51),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BUttonwidget(width: width * 0.45, text: "VIVAVOCE"),
                  BUttonwidget(text: "HANG UP"),
                ],
              ),
            ),
            CustomSizedBox(height: 61),
            BUttonwidget(text: "Mute"),
          ],
        ),
      )),
    );
  }
}
