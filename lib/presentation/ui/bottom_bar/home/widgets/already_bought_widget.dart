import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/common/horizontal_list_products.dart';

class AlreadyBoughtWidget extends StatelessWidget {
  const AlreadyBoughtWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 10.h),
          child: Text(
            'Уже покупали',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const HorizontalListProducts(),
      ],
    );
  }
}