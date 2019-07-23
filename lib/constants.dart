//Having a dedicated constants folder has a lot of advantages
//It is common practice in dart to start constants with a 'k'

import 'package:flutter/material.dart';

//Calculation consts
const kOneCmInInches = 2.54;
const kOneFtInInches = 12;

//Widget Size Values
const kBottomContainerHeight = 80.0;
const kIconSize = 80.0;
// The slider value is actually in cm but the displayed value
// will be in ft
const kMinSliderValue = 30.48;
const kMaxSliderValue = 335.28;

//Colors
const kActiveCardColor = Color(0xFF1D1E33);
const kInActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0XFFEB1555);
const kActiveSliderColor = Color(0xFFEB1555);
const kInactiveSliderColor = Color(0xFF8DE98);
const kSliderOverlayColor = Color(0x1fEB1555);
const kNiceGrey = Color(0xff4c4f5e);

//Font styles
const double kResultFontSIze = 22.0;
const kGreyText = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kBoldText = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kBottomContainerText =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
const kTitleText = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const kGreenText = TextStyle(
    fontSize: kResultFontSIze,
    color: Color(0xff24d876),
    fontWeight: FontWeight.bold);
const kVeryBoldText = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const kNormalText = TextStyle(fontSize: kResultFontSIze);
