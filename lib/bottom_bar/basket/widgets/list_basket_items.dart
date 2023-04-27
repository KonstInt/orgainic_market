import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_market/utils/constants.dart';

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
      child: SizedBox(
        height: 70.h,
        width: double.infinity,
        child: Row(
          children: [
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
                  price(1900, true, 1000, context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget price(
      double price, bool isSale, double newPrice, BuildContext context) {
    if (isSale) {
      return Row(
        children: [
          Text(
            newPrice.toInt().toString() + ' ₽',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: MyColors.kRedColor,
                ),
          ),
          SizedBox(
            width: 8.w,
          ),
          
          Stack(
            children: [
              Text(
                '${price.toInt()} ₽',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Transform.rotate(
                      angle: -10*pi/180,
                child: Positioned(
                  top: 0,
                  bottom: 0,
                  child: SizedBox(
                      width: 40,
                      child: Divider(
                        thickness: 3,
                        color: MyColors.kRedColor,
                      ),),
                ),
              )
            ],
          ),
        ],
      );
    }

    return Text(
      price.toInt().toString() + ' ₽',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
    );
  }
}
