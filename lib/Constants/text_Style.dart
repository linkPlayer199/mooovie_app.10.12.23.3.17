import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mooovie_app/Constants/color_constants.dart';

class ColorConst {
  static const Color primaryColor = Colors.green;
  static const Color greyButtonBgColor = Colors.grey;
  static const Color backgroundColor = Colors.white;
  static const TextStyle headingStyle1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle headingStyle2 = TextStyle(
    fontSize: 25,
    //fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  static const TextStyle legal = TextStyle(color: AppColor.black);
  static const TextStyle user = TextStyle(
      color: AppColor.black, fontSize: 14, fontWeight: FontWeight.w400);
}

var temporary = GoogleFonts.inter(fontSize: 36, fontWeight: FontWeight.w400);
