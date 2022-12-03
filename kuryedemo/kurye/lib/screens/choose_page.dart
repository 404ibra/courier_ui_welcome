import 'package:flutter/material.dart';
import 'package:kurye/utils/customColors.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  final topImage = "assets/images/chooseScreen.png";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSizedBox(40),
            topImageContainer(height, topImage),
            customSizedBox(70),
            customElevatedButton("Kurye olarak devam etmek istiyorum"),
            customSizedBox(30),
            customElevatedButton("İşveren olarak devam etmek istiyorum")
          ],
        ),
      ),
    );
  }

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/bossPage");
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black45,
        ),
      ),
    );
  }

  Padding customElevatedButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0),
      child: Container(
        height: 50,
        width: 350,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(CustomColors.elevatedButtonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)))),
        ),
      ),
    );
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * 0.5,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(topImage))),
    );
  }

  SizedBox customSizedBox(double height) => SizedBox(
        height: height,
      );
}
