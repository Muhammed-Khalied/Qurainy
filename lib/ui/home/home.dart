import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:qurainy/ui/home/tabs/qurain_tab/qurain_tab.dart';
import 'package:qurainy/ui/home/tabs/radio_tab/radio_tab.dart';
import 'package:qurainy/ui/home/tabs/tasbeh_tab/tasbeh_tab.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  int selected_index = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            body: tabs[selected_index],
            bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(),
                child: BottomNavigationBar(
                    onTap: (value) {
                      setState(() {
                        selected_index = value;
                      });
                    },
                    selectedLabelStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "ScheherazadeNew"),
                    unselectedIconTheme: IconThemeData(size: 22.sp),
                    selectedIconTheme: IconThemeData(size: 32.sp),
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.white,
                    currentIndex: selected_index,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: const Color(0xffB7935F),
                    items: const [
                      BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage(
                              "assets/images/shranks_images/icon_radio.png",
                            ),
                          ),
                          label: "الراديو"),
                      BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage(
                              "assets/images/shranks_images/icon_sebha.png",
                            ),
                          ),
                          label: "السبحه"),
                      BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage(
                              "assets/images/shranks_images/icon_hadeth.png",
                            ),
                          ),
                          label: "الحديث"),
                      BottomNavigationBarItem(
                          icon: ImageIcon(
                            AssetImage(
                              "assets/images/shranks_images/icon_quran.png",
                            ),
                          ),
                          label: "القرآن")
                    ]))));
  }

  List<Widget> tabs = [
    const RadioTab(),
    const TasbehTab(),
    HadethTab(),
    QurainTab(),
  ];
}
