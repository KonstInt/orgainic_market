import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_market/bottom_bar/basket/widgets/price_widget.dart';
import 'package:organic_market/utils/constants.dart';

import 'items_counter.dart';

class ListBasketItems extends StatelessWidget {
  const ListBasketItems({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 16.w, right: 14.w),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.7.h,
          );
        },
        itemBuilder: (context, index) {
          return basketProductItem(context, index);
        });
  }

  Widget basketProductItem(BuildContext context, int index) {
    return InkWell(
      splashColor: MyColors.kGreyChipBackground,
      //hoverColor: Colors.red,
      highlightColor: Theme.of(context).colorScheme.background,
      onTap: () {},
      child: SizedBox(
        height: 70.h,
        width: double.infinity,
        child: Row(
          children: [
          //Checkbox(value: value, onChanged: (value){ value = !value!;}),
            SizedBox(
              width: 70.r,
              height: 70.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(MyAssets.kMolokoImage),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Row(
                    children: [
                      const PriceWidget(
                        price: 1900,
                        isSale: true,
                        newPrice: 1000,
                      ),
                      const Spacer(),
                      ItemsCounter(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
