import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';
import '../../../../widgets/common/product_category.dart';

class PopularCategoryWidget extends StatelessWidget {
  const PopularCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 5.h),
          child: Text(
            MyStrings.kPopularCategories,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 135.h,
          child: ListView.builder(

            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            itemCount: 6,
            itemBuilder: (context, item) {
              return SizedBox(
                width: 120.w,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0.w, horizontal: 5.w),
                  child: const ProductCategory(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
