import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable, camel_case_types
class Item_Soura_Name extends StatelessWidget {
  String content;
  int index;


  Item_Soura_Name(
      {super.key,
      required this.content,
      required this.index,
      });
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "  $content (${index + 1})\n",
      style: TextStyle(
        fontSize: 20.sp,
        fontFamily: "ScheherazadeNew",
      ),
      textDirection: TextDirection.rtl,
    );
  }
}
