import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market/utils/constants.dart';

class ItemsCounter extends StatelessWidget {
  const ItemsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 104.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        color: MyColors.kGreyChipBackground,
      ),
      child: InkWell(
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/other/minus.svg'),
              ),
            ),
            Expanded(
                child: Text(
              'ee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/other/plus.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}