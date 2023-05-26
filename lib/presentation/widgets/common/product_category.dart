import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../domain/routes/router.gr.dart';
import '../../../utils/constants.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
       onTap: () {
        AutoRouter.of(context).push(const SubCategoryRoute());
      },
      begin: 1.0,
      end: 0.95,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12.w),
          ),
          color: Theme.of(context).colorScheme.onBackground,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //New
              blurRadius: 10.0,
              offset: Offset(-3.w, 2.h),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 13.h,
              left: 25.w,
              child: SvgPicture.asset(MyAssets.kCheeseCircle),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                height: 75.h,
                width: 75.w,
                child: Image.asset(
                  MyAssets.kCheeseImage,
                ),
              ),
            ),
            Positioned(
              bottom: 12.h,
              left: 12.w,
              right: 8.w,
              child: Text(
                'Молочные продукты, яйцо',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
