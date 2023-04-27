import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/common/product_category.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left:16.0.w, bottom: 5.h),
          child: Text('Категории', style: Theme.of(context).textTheme.titleLarge,),
        ),
        GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 16.w, mainAxisSpacing: 16.h, childAspectRatio: 4.5/3),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 60.h,
                  width: 100,
                  child: ProductCategory(),);
              },
            ),
      ],
    );
  }
}