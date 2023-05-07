import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';

class PriceWidget extends StatelessWidget {
  final double price;
  final bool isSale;
  final double? newPrice;

  const PriceWidget({
    super.key,
    required double this.price,
    required bool this.isSale,
    double? this.newPrice,
  });
  @override
  Widget build(BuildContext context) {
    if (isSale) {
      return Row(
        children: [
          Text(
            newPrice!.toInt().toString() + ' ₽',
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
