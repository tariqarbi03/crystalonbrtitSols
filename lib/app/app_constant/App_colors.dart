import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Colors.black;
  static const Color secondary = Color(0xFFF49C10);
  static const Color primaryColor = Color(0xFF1D1D1D);
  static const Color red = Colors.red;
  static const Color greyColor = Colors.grey;
  static const Color kWhite = Colors.white;
  static const Color kTransparent = Colors.transparent;



  static const Color appBlue = Color(0xFFA6A3FC);
  static const Color textfieldGrey = Color(0xFFCCCBCB);
  static const Color darkColor = Color(0xFF183045);
  static const Color editColor = Color(0xFFC78282);
  static const Color todayColor = Color(0xFF979797);
  static const Color capacityColor = Color(0xFF9D0202);
  static const Color trackColor = Color(0xFFE7EAED);
  static const Color sliderColor = Color(0xFFD9D9D9);
  static const Color dividerColor = Color(0xFF9C9C9C);
  static const Color toggleInsideColor = Color(0xFF8582C6);
  static const Color primary = Color(0xFF151413);
  static const Color authBlack = const Color(0x19FCFCFE);
  static const Color inActive = Color(0xFF8B8B8B);
  static const Color onlineColor = Color(0xFF24D221);
  static const Color typing = Color(0xFFB1B1B1);
  static const Color hintColor = Color(0xFFCCCBCB);
  static const Color borderColor = secondary;
  static const Color activeColor = Color(0xFF00FDFF);
  static const Color tayriYellow =  Color(0xFFF0FB01);
  static const Color dateYellow =  Color(0xFFE49200);
  static const Color likeOrange =  Color(0xFF8F0E0E);
  static const Color KYellow =  Color(0xFFFED001);
  static const Color kOrange =  Color(0xFFE49200);
  static const Color textColor =  Color(0xFF808184);
  static const Color typingColor =  Color(0xFF252525);
  static const Color kRed =  Color(0xFF8F0E0E);
  static  Color kBlackBlur =  Color(0xFF000000).withOpacity(0.5);
  static const Color secondWhite =  Color(0xFFF3F4D8);
  static const Color appRed =  Color(0xFF8F0E0E);
  static const Color lightBlack =  Color(0xFF121212);
  static const Color labelColor =  Color(0xFF626262);
  static  LinearGradient kBtnGradient = LinearGradient(
    begin: Alignment(1.00, -0.03),
    end: Alignment(-1, 0.03),
    colors: [
      Color(0xFFC07301).withOpacity(0.6), Color(0xFFE49200).withOpacity(0.6),
      Color(0xFFFED001).withOpacity(0.6), Color(0xFFF0FB01).withOpacity(0.6),
      Color(0xFFFED001).withOpacity(0.6), Color(0xFFE49200).withOpacity(0.6),
      Color(0xFFC07301).withOpacity(0.6),

    ],
  );
  static  LinearGradient kTextGradient = LinearGradient(
    begin: Alignment(1.00, -0.03),
    end: Alignment(-1, 0.03),
    colors: [
      Color(0xFFFED001), Color(0xFFF0FB01),
      Color(0xFFE49200),
      Color(0xFFC07301),

    ],
  );
  static  LinearGradient kSeletecTabGradient = LinearGradient(
    begin: Alignment.center,
    end: Alignment.center,
    // begin: Alignment(1.00, -0.03),
    // end: Alignment(-1, 0.03),
    colors: [
      Color(0xFFC07301).withOpacity(0.52),
    Color(0xFFE49200).withOpacity(0.52),
      Color(0xFFFED001).withOpacity(0.52),
      Color(0xFFF0FB01).withOpacity(0.52),

    ],
  );
  static const LinearGradient kFieldGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
    tayriYellow,kOrange
    ],
  );

}