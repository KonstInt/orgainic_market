import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/pages/subcategory_list/widgets/products_category_grid.dart';

class ListProductCategories extends StatelessWidget {
  const ListProductCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return itemBuild(context, index);
        });
  }

  Widget itemBuild(BuildContext context, int item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 15.h),
          child: Text(
            'Чай черный',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18.sp),
          ),
        ),
        ProductCategoryGrid(),
      ],
    );
  }
}
