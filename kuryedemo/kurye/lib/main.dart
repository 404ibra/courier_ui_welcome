import 'package:flutter/material.dart';
import 'package:kurye/screens/boss_page.dart';
import 'package:kurye/screens/infoText.dart';
import 'package:kurye/screens/kurye_page.dart';
import 'package:kurye/screens/choose_page.dart';
import 'package:kurye/utils/customColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/kuryePage": (context) => KuryePage(),
        "/whileStarting": (context) => InfoText(),
        "/bossPage": (context) => BossPage(),
        "/chooseScreen": (context) => ChoosePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: CustomColors.scaffoldBackgroundColor,
            elevation: 0.0,
          ),
          scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor),
      home: InfoText(),
    );
  }
}
