import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/common/item_product.dart';

class HorizontalListProducts extends StatelessWidget {
  const HorizontalListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        padding: EdgeInsets.only(left: 8.w, right: 8.w),
        itemBuilder: (BuildContext context, int index) {
          return const ItemProduct();
        },
      ),
    );
  }
}