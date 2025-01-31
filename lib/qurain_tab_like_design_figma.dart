import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable, camel_case_types
class Qurain_Tab_Like_Design_Figma extends StatelessWidget {
  static const String routeName = "QurainTab";
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  Qurain_Tab_Like_Design_Figma({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("assets/images/shranks_images/default_bg.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              "إقراء",
              style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ScheherazadeNew"),
            ),
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/shranks_images/qur2an_screen_logo.png",
                  width: 160.w,
                  height: 175.h,
                ),
              ),
              Column(
                children: [
                  Divider(
                    color: const Color(0xffB7935F),
                    thickness: 2.8.sp, //thickness of divier line
                    height: 2.h, //height spacing of divider
                  ),
                  IntrinsicHeight(
                      //wrap Row with this, otherwise, vertical divider will not display
                      child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 36.h,
                          child: Text(
                            "عدد الآيات",
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "ScheherazadeNew"),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: const Color(0xffB7935F),
                        thickness: 2.8.sp, //thickness of divier line
                        width: 3.w, //width space of divider
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 36.h,
                          child: Text(
                            "إسم السورة",
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "ScheherazadeNew"),
                          ),
                        ),
                      )
                    ],
                  )),
                  Divider(
                    color: const Color(0xffB7935F),
                    thickness: 2.8.sp, //thickness of divier line
                    height: 2.h, //height spacing of divider
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                            height: 393.h,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  ListView.separated(   shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                separatorBuilder: (context, index) => Divider(
                                      color: const Color(0xffB7935F),
                                      thickness: 2.sp,
                                    ),
                                itemCount: versesNumber.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    textAlign: TextAlign.center,
                                    versesNumber[index].toString(),
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "ScheherazadeNew"),
                                  );
                                }),
                                ],
                              ),
                            ))),
                    VerticalDivider(
                      color: const Color(0xffB7935F),
                      thickness: 2.8.sp, //thickness of divier line
                      width: 3.w, //width space of divider
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 393.h,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListView.separated(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  separatorBuilder: (context, index) => Divider(
                                        color: const Color(0xffB7935F),
                                        thickness: 2.sp,
                                      ),
                                  itemCount: suraNames.length,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      textAlign: TextAlign.center,
                                      suraNames[index],
                                      style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "ScheherazadeNew"),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    )
                    /*
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                                // shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                separatorBuilder: (context, index) => Divider(
                                      color: const Color(0xffB7935F),
                                      thickness: 2.sp,
                                    ),
                                itemCount: suraNames.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    textAlign: TextAlign.center,
                                    suraNames[index],
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "ScheherazadeNew"),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              )

              /*
              SizedBox(
                height: 393.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) => Divider(
                                color: const Color(0xffB7935F),
                                thickness: 2.sp,
                              ),
                          itemCount: suraNames.length,
                          itemBuilder: (context, index) {
                            return Text(
                              textAlign: TextAlign.center,
                              suraNames[index],
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "ScheherazadeNew"),
                            );
                          }),
                    ],
                  ),
                ),
              )*/
            ],
          ),
        ));
  }
}
