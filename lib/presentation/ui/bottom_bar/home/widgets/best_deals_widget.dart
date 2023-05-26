import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';
import '../../../../widgets/common/horizontal_list_products.dart';

class BestDealsWidget extends StatelessWidget {
  const BestDealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 10.h),
          child: Text(
            MyStrings.kBestDeals,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const HorizontalListProducts(),
      ],
    );
  }
}
