import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'item_tag.dart';
import '../../../../../utils/constants.dart';

class ListItemTag extends StatelessWidget {
  final bool isSale;
  final bool isOrganic;
  final bool isExpressDelivery;
  final int saleSize;
  const ListItemTag(
      {super.key,
      required this.isSale,
      required this.isOrganic,
      required this.isExpressDelivery,
      this.saleSize = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 16.w,
          ),
          
          if(isSale)
          ItemTag(
            text: "-$saleSize%",
            color: MyColors.kRedColor,
            textColor: MyColors.kWhiteColor,
          ),
          if(isOrganic)
          ItemTag(
            icon: MyAssets.kLeafImage,
            text: MyStrings.kOrganic,
            color: MyColors.kGreenColor,
            textColor: MyColors.kWhiteColor,
          ),
          if(isExpressDelivery)
          ItemTag(
            icon: MyAssets.kFastCarImage,
            text: MyStrings.kExpressDelivery,
            color: MyColors.kYellowColor,
            textColor: MyColors.kBlackColor,
          ),
        ],
      ),
    );
  }
}
