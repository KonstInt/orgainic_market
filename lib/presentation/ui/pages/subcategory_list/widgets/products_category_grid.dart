import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../widgets/common/item_product.dart';
import '../../../../../domain/models/short_product_model.dart';

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
