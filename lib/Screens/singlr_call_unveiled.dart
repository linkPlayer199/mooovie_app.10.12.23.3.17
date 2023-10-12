import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Screens/chat_unveiled.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/customSizedBox.dart';

class SingleCallUnveiled extends StatelessWidget {
  const SingleCallUnveiled({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomSizedBox(height: 32),
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
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatUnveiled()),
                  );
                },
                width: width * 0.5,
                text: 'Single Call'),
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
    );
  }
}
