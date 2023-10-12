import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/single_call.dart';

class DriveALert2 extends StatelessWidget {
  const DriveALert2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Text(
                  'Legal',
                  style: ColorConst.legal,
                ),
              ),
            ],
          ),
          Flexible(child: SizedBox(height: 50)),
          Center(
            child: InkWell(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SingleCall()),
                    );
            }, child: Text('???')),
          ),
          Flexible(child: SizedBox(height: 150)),
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
                      Text(
                        'LINK to the national law',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
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
