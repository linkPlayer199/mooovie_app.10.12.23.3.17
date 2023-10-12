import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        width: width * 0.4,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Container(
            height: 10,
            width: 10,
            color: Colors.grey,
          )),
        ));
  }
}
