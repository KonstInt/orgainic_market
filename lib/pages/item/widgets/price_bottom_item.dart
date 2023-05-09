
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';

class PriceBottomItemWidget extends StatelessWidget {
  final double price;
  final bool isSale;
  final String measureType;
  final double? newPrice;

  const PriceBottomItemWidget({
    super.key,
    required this.price,
    required this.measureType,
    required this.isSale,
    double? this.newPrice,
  });
  @override
  Widget build(BuildContext context) {
    if (isSale) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${price.toInt()} ₽',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Text(
                    ' / $measureType',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Transform.rotate(
                  angle: -10 * pi / 180,
                  child: const SizedBox(
                    width: 40,
                    child: Divider(
                      thickness: 2,
                      color: MyColors.kRedColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 8.w,
          ),
          Row(
            children: [
              Text(
                newPrice!.toInt().toString() + ' ₽',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: MyColors.kRedColor,
                    ),
              ),
              Text(
                '/ $measureType',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ],
          ),
          
        ],
      );
    }
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 17.h),
          child: Row(
            children: [
              Text(
                price.toInt().toString() + ' ₽',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 28.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                      '/ кг',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
