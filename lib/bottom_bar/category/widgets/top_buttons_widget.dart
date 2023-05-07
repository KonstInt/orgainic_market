import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    BoxDecoration _localBoxDecoration = BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.w),
                    ),
                    color: Theme.of(context).colorScheme.onBackground,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow, //New
                        blurRadius: 7.0.r,
                        offset: Offset(-1.w, 3.h),
                      ),
                    ],
                  );
    ButtonStyle _localBtStyle = ButtonStyle(
      overlayColor:
          MaterialStateProperty.all(Color.fromARGB(86, 208, 208, 208)),
      animationDuration: const Duration(milliseconds: 10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        Theme.of(context).colorScheme.onBackground,
      ),
      foregroundColor: MaterialStateProperty.all(MyColors.kBlackColor),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 4.w, left: 16.w, top: 15.h),
                child: DecoratedBox(
                  decoration: _localBoxDecoration,
                  child: TextButton(
                    style: _localBtStyle,
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            MyAssets.kPercentIcon,
                            color: MyColors.kBlueColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Скидки',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 14.sp,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 16.w, left: 4.w, top: 15.h),
                child: DecoratedBox(
                  decoration: _localBoxDecoration,
                  child: TextButton(
                    style: _localBtStyle,
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            MyAssets.kHurtIcon,
                            color: MyColors.kRedColor,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Избранное',
                            style:
                                Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontSize: 14.sp,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.w),
          child: DecoratedBox(
            decoration: _localBoxDecoration,
            child: TextButton(
              style: _localBtStyle,
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      MyAssets.kBasketIcon,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Уже покупали',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 14.sp,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
