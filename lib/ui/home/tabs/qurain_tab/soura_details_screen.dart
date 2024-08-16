import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/tabs/qurain_tab/item_soura_details.dart';

class SouraDetailsScreen extends StatefulWidget {
  static const String routeName = "SouraDetailsScreen";

  const SouraDetailsScreen({super.key});

  @override
  State<SouraDetailsScreen> createState() => _SouraDetailsScreenState();
}

class _SouraDetailsScreenState extends State<SouraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Soura_Details_Args;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
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
              " سورة ${args.name}",
              style: TextStyle(fontSize: 34.sp, fontFamily: "ScheherazadeNew"),
            ),
          ),
          body: verses.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xffB7935F),
                  ),
                )
              : Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  margin: EdgeInsets.only(
                      top: 60.h, bottom: 15.h, left: 18.w, right: 18.w),
                  decoration: BoxDecoration(
                      // color: const Color(0xffB7935F),
                      color: const Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(25.r)),
                  child: ((args.index != 8) && (args.index != 0))
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "بسم الله الرحمن الرحيم",
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: "ScheherazadeNew",
                                ),
                              ),
                              SizedBox(
                                height: 35.h,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Item_Soura_Name(
                                    content: verses[index],
                                    index: index,
                                  );
                                  // Text(
                                  //   " ${verses[index]}\n",
                                  //   textAlign: TextAlign.center,
                                  //   style: TextStyle(
                                  //     fontSize: 20.sp,
                                  //     fontFamily: "ScheherazadeNew",
                                  //   ),
                                  // );
                                },
                                itemCount: verses.length,
                              ),
                            ],
                          ),
                        )
                      : ListView.builder(
                          // shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Item_Soura_Name(
                              content: verses[index],
                              index: index,
                            );
                            // Text(
                            //   " ${verses[index]}\n",
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //     fontSize: 20.sp,
                            //     fontFamily: "ScheherazadeNew",
                            //   ),
                            // );
                          },
                          itemCount: verses.length,
                        ))),
    );
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    content.split("\n");
    List<String> lines = content.split("\n");

    verses = lines;
    setState(() {});
  }
}

// ignore: camel_case_types
class Soura_Details_Args {
  String name;
  int index;
  Soura_Details_Args({required this.name, required this.index});
}
