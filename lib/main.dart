import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurainy/ui/home/home.dart';
import 'package:qurainy/ui/home/tabs/hadeth_tab/hadeth_details.dart';
import 'package:qurainy/ui/home/tabs/qurain_tab/soura_details_screen.dart';

void main() {
 
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initilization();
  }

  void initilization() async {
    //print("pausing...");
    await Future.delayed(const Duration(seconds: 3));
    //print("unpausing");
    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
            ),
            initialRoute: HomeScreen.routeName,
            routes: {
              HomeScreen.routeName: (context) => const HomeScreen(),
              SouraDetailsScreen.routeName: (context) =>
                  const SouraDetailsScreen(),
              HadethDetailsScreen.routeName: (context) =>
                  const HadethDetailsScreen(),
              // QurainTab.routeName: (context) => QurainTab(),
              // HadethTab.routeName: (context) => const HadethTab(),
              // TasbehTab.routeName: (context) => const TasbehTab(),
              // RadioTab.routeName: (context) => const RadioTab(),
            },
          );
        });
  }
}
