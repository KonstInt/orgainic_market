import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/constants.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '3 товарв',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18.sp, color: MyColors.kGreyColor),
              ),
              const Spacer(),
              Text(
                '1999',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18.sp),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Text(
                'Скидка 10%',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18.sp, color: MyColors.kRedColor),
              ),
              const Spacer(),
              Text(
                '-150',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18.sp, color: MyColors.kRedColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
