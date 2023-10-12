// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:mooovie_app/Constants/color_constants.dart';

class CircleWidget extends StatelessWidget {
  Color? backgroundcolor;
  double? radius;
  CircleWidget({
    Key? key,
    this.backgroundcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundcolor ?? Colors.black,
      radius: radius ?? 52,
      child: CircleAvatar(
        backgroundColor: AppColor.circlecolour,
        radius: 50,
      ),
    );
  }
}
