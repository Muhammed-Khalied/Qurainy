import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/tabs/hadeth_tab/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "HadethDetailsScreen";
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var argsHadeth = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/shranks_images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              argsHadeth.title,
              style: TextStyle(fontSize: 25.sp, fontFamily: "ScheherazadeNew"),
            ),
          ),
          body: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              margin: EdgeInsets.only(
                  top: 60.h, bottom: 15.h, left: 18.w, right: 18.w),
              decoration: BoxDecoration(
                  // color: const Color(0xffB7935F),
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(25.r)),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    textAlign: TextAlign.center,
                    argsHadeth.contentHadeth[index],
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "ScheherazadeNew",
                    ),
                    textDirection: TextDirection.rtl,
                  );
                },
                itemCount: argsHadeth.contentHadeth.length,
              ))),
    );
  }
}
