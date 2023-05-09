import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/product_list/product_list_bloc.dart';

import '../../common/horizontal_list_products.dart';

class AlreadyBoughtWidget extends StatelessWidget {
  AlreadyBoughtWidget({super.key});
  
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
        HorizontalListProducts(),
      ],
    );
  }
}