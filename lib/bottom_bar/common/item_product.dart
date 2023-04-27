import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/utils/constants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        print('ooo');
      },
      begin: 1.0,
      end: 0.95,
      child: Container(
        height: 240.h,
        width: 168.w,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 10.h, bottom: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
          color: Theme.of(context).colorScheme.onBackground,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //New
              blurRadius: 10.0,
              offset: Offset(-3.w, 3.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 130.r,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                child: FittedBox(
                  child: Image.asset(MyAssets.kMolokoImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 5.h),
              child: Text(
                'Масло сливочное традиционное',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 4.h),
              child: Text(
                'За 0,35 кг',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                  child: Text(
                    '379₽',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: TextButton(
                    onPressed: () {
                      print('bbb');
                    },
                    child: SvgPicture.asset(
                      MyAssets.kBasketIcon,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
