import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/tabs/qurain_tab/soura_details_screen.dart';

// ignore: must_be_immutable
class ItemSouraName extends StatelessWidget {
  String name;
  int index;
  int versesNum;

  ItemSouraName({
    super.key,
    required this.name,
    required this.versesNum,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SouraDetailsScreen.routeName,
            arguments: Soura_Details_Args(
              name: name,
              index: index,
            ));
      },
      child: Row(
        children: [
          const Spacer(),
          Text(
            versesNum.toString(),
            style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ScheherazadeNew"),
          ),
          const Spacer(flex: 2),
          Text(
            name,
            style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "ScheherazadeNew"),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
