import 'package:demoapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

const TextStyle textStyleDark =
    TextStyle(fontWeight: FontWeight.w400, color: black, fontSize: 18);

const TextStyle textStyleLight = TextStyle(
  fontWeight: FontWeight.bold,
  color: white,
);

const TextStyle textStyleSecondary = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w600,
  color: greycolor,
);
const TextStyle textStyleGrey = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.normal,
  color: greycolor,
);

const TextStyle buttonTextStyleLight = TextStyle(
  fontWeight: FontWeight.bold,
  color: white,
);

const TextStyle textStyleSmall = TextStyle(
  textBaseline: TextBaseline.ideographic,
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: primarytheme,
);

//---------------------------Button----------------------------------------
Widget buttonWidgetPrimary(String title) {
  return Material(
    shadowColor: redbutton,
    color: redbutton,
    child: Container(
      width: 100,
      height: 30,
      padding: const EdgeInsets.all(3.0),
      child: Center(
        child: Text(
          title,
          style: buttonTextStyleLight,
        ),
      ),
    ),
  );
}

Widget freshContainer(String title) {
  return Container(
    // width: 50,
    // height: 10,
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.all(1),
    color: const Color.fromARGB(255, 129, 192, 243),
    child: Center(
      child: Text(
        title,
        style: textStyleLight,
      ),
    ),
  );
}
