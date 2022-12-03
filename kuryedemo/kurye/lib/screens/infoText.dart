import 'package:flutter/material.dart';
import 'package:kurye/utils/customColors.dart';

class InfoText extends StatefulWidget {
  const InfoText({super.key});

  @override
  State<InfoText> createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  final topImage = "assets/images/phoneImage.png";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSizedBox(10),
            topImageContainer(height, topImage),
            titleText(),
            customSizedBox(25),
            infoText(),
            customSizedBox(60),
            customElevatedButton("Devam edelim"),
          ],
        ),
      ),
    );
  }

  Padding infoText() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Su, yemek, ilaç, detarjan aklınıza\ngelebilecek her şeyi anında teslim ederiz",
              style:
                  TextStyle(fontSize: 15, color: CustomColors.infoTextColor),
            ),
          );
  }

  Padding titleText() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "ABC ile aynı gün\nteslimat",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          );
  }

  SizedBox customSizedBox(double height) => SizedBox(
        height: height,
      );

  Padding topImageContainer(double height, String topImage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: height * 0.5,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(topImage))),
      ),
    );
  }

  Padding customElevatedButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 50,
        width: 350,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/kuryePage");
          },
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

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.close),
          color: Colors.black45,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/chooseScreen");
              },
              child: Text("Atla",
                  style: TextStyle(color: Colors.black54, fontSize: 17))),
        )
      ],
    );
  }
}
