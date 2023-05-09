import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyColors {
  static const Color kBlackColor = Color(0xFF000000);
  static const Color kGreyColor = Color(0xFF8E9096);
  static const Color kGreyBackground = Colors.transparent;
  static const Color kLightGreyColor = Color.fromARGB(255, 182, 182, 182);
  static const Color kShadowGreyColor = Color.fromARGB(133, 153, 153, 153);
  static const Color kGreyChipBackground = Color(0xFFF2F3F0);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kGreenColor = Color(0xFF95CA00);
  static const Color kRedColor = Color(0xFFFF3759);
  static const Color kYellowColor = Color(0xFFFFDD00);
  static const Color kBlueColor = Color(0xFF3773E7);
}

class MyConstants {
  static String baseUrl = 'https://fakestoreapi.com';
  static double kBottomNavBarHeight = Platform.isIOS? kBottomNavigationBarHeight+20.h : kBottomNavigationBarHeight-10.h;
}

class MyAssets {
  static const String kCarIcon = 'assets/icons/other/car.svg';
  static const String kMyHomeIconPt1 = 'assets/icons/bottom_bar/home1.svg';
  static const String kMyHomeIconPt2 = 'assets/icons/bottom_bar/home2.svg';
  static const String kCatalogIcon = 'assets/icons/bottom_bar/catalog.svg';
  static const String kFindIcon = 'assets/icons/bottom_bar/find.svg';
  static const String kBasketIcon = 'assets/icons/bottom_bar/basket.svg';
  static const String kProfileIcon = 'assets/icons/bottom_bar/profile.svg';
  static const String kMaskImage = 'assets/tmp/mask.png';
  static const String kPercentIcon = 'assets/icons/other/percent.svg';
  static const String kHurtIcon = 'assets/icons/other/hurt.svg';
  static const String kTrashIcon = 'assets/icons/other/trash.svg';
  static const String kLogoutIcon = 'assets/icons/other/logout.svg';
  static const String kQuestionIcon = 'assets/icons/other/question.svg';
  static const String kRowRight = 'assets/icons/other/row_right.svg';
  static const String kLeafImage = 'assets/icons/other/leaf.png';
  static const String kFastCarImage = 'assets/icons/other/fast_car.png';
  //Temporary
  static const String kIkraImage = 'assets/tmp/ikra.png';
  static const String kMaskedIkraImage = 'assets/tmp/masked_ikra.png';
  static const String kMolokoImage = 'assets/tmp/myaso.jpg';
  static const String kCheeseImage = 'assets/tmp/cheese.png';
  static const String kCheeseCircle = 'assets/tmp/cheese_circle.svg';
  //
  static const String kBrandIchocImage = 'assets/brands/ichoc.png';
  static const String kBrandPabloImage = 'assets/brands/pablo.png';
  static const String kBrandSashaImage = 'assets/brands/sasha.png';
  static const String kBrandUfeelgoodImage = 'assets/brands/ufeelgood.png';
  static const String kBrandUglicheImage = 'assets/brands/ugliche.png';
  static const String kBrandWeledaImage = 'assets/brands/weleda.png';
}
