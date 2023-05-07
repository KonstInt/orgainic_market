import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/common/item_product.dart';

class ProductCategoryGrid extends StatelessWidget {
  const ProductCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        return ItemProduct();
      },
    );
  }
}
