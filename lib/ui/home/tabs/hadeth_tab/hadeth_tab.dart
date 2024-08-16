import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/tabs/hadeth_tab/hadeth_details.dart';
import 'package:qurainy/ui/home/tabs/hadeth_tab/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  static const String routeName = "HadethTab";

  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/shranks_images/hadeth_logo.png",
            width: 160.w,
            height: 175.h,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Divider(
              color: const Color(0xffB7935F),
              thickness: 2.8.sp, //thickness of divier line
              height: 2.h, //height spacing of divider
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 36.h,
                    child: Text(
                      "الأحاديث",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "ScheherazadeNew"),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: const Color(0xffB7935F),
              thickness: 2.8.sp, //thickness of divier line
              height: 2.h, //height spacing of divider
            ),
          ],
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                          color: const Color(0xffB7935F),
                          thickness: 2.sp,
                        ),
                    itemCount: allAhadeth.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, HadethDetailsScreen.routeName,
                              arguments: allAhadeth[index]);
                        },
                        child: Text(
                          allAhadeth[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "ScheherazadeNew"),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ],
    );
  }

  loadHadethFile() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");
      for (int counter = 0; counter < ahadeth.length; counter++) {
        String hadethOne = ahadeth[counter];
        List<String> hadethLine = hadethOne.trim().split("\n");
        String title = hadethLine[0];
        hadethLine.removeAt(0);
        List<String> contentHadeth = hadethLine;
        HadethModel hadethModel =
            HadethModel(title: title, contentHadeth: contentHadeth);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    });
  }
}
