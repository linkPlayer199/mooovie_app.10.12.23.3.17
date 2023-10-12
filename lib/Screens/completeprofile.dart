import 'package:flutter/material.dart';
import 'package:mooovie_app/Constants/text_Style.dart';
import 'package:mooovie_app/Screens/alert_exp.dart';
import 'package:mooovie_app/Screens/temporary_home_page.dart';
import 'package:mooovie_app/Widgets/buttonwidget.dart';
import 'package:mooovie_app/Widgets/textfieldwidget.dart';

import '../Constants/color_constants.dart';

class CompleteProfile extends StatefulWidget {
  CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //primary: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Text(
                  'Legal',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Text('Check account', style: ColorConst.headingStyle2),
          SizedBox(height: 10,),
          //TextFieldWidget(text: 'insert code', width: _width / 1.3),
          Text('Choose your public \n      nickname',
              style: ColorConst.headingStyle2),
          SizedBox(
            width: _width / 1.2,
            child: Divider(color: Colors.black, thickness: 1.5),
          ),
          Text('your secret nickname', style: ColorConst.headingStyle2),
          SizedBox(
            width: _width / 1.2,
            child: Divider(color: Colors.black, thickness: 1.5),
          ),
          Text('your services', style: ColorConst.headingStyle2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
               InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => AlertExp()));
                   },
                   child: Text('Carsharing (???)', style: ColorConst.headingStyle2)),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Checkbox(
          //       value: _isChecked2,
          //       onChanged: (value) {
          //         setState(() {
          //           _isChecked2 = value!;
          //         });
          //       },
          //     ),
          //     const Text('Profiling (???)', style: ColorConst.headingStyle2),
          //   ],
          // ),
          BUttonwidget(
            text: 'go',
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TemporaryHomePage()));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => AlertExp()));
            },
          ),
        ],
      ),
    ));
  }
}
