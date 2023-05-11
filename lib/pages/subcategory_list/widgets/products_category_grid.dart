import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/product_list/product_list_bloc.dart';
import 'package:organic_market/bottom_bar/common/item_product.dart';
import 'package:organic_market/models/short_product_model.dart';

class ProductCategoryGrid extends StatelessWidget {
  final List<ShortProductModel> products;
  const ProductCategoryGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        return ItemProduct(product: products[index]);
      },
    );
  }
}
