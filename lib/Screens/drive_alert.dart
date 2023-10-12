import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/drive_alert2.dart';

class DriveAlert extends StatelessWidget {
  const DriveAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     //SizedBox(width: 16),
            //     ElevatedButton(
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(
            //         //primary: Colors.transparent,
            //         backgroundColor: Colors.transparent,
            //         elevation: 0,
            //       ),
            //       child: Text(
            //         'Legal',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: ColorConst.greyButtonBgColor,
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Flexible(child: SizedBox(height: 30)),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Are you driving? \n\n  If you are driving you can use only the vocal assistant \n\n DRIVE SAFE, RESPECT THE LOCAL LAW!',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    // Flexible(child: SizedBox(height: 10)),
                    // Row(
                    //   children: [
                    //     Text('    Explanation',style: TextStyle(fontSize: 18.0, color: Colors.black),),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            Flexible(child: SizedBox(height: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: ColorConst.greyButtonBgColor,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width: 50)),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => DriveALert2()),
                    // );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: ColorConst.greyButtonBgColor,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        'No',
                        style: TextStyle(fontSize: 28.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
