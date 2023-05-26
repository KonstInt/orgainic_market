import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/constants.dart';

// ignore: must_be_immutable
class ItemTag extends StatelessWidget {
  String? icon;
  String text;
  Color? color;
  Color textColor;
  ItemTag(
      {super.key,
      required this.text,
      this.icon,
      this.color,
      this.textColor = MyColors.kBlackColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        padding: EdgeInsets.only(right: 13.w, left: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4.r),
          ),
          color: color ?? Theme.of(context).colorScheme.onBackground,
        ),
        height: 24.h,
        child: Row(
          children: [
            icon != null
                ? Image.asset(
                    icon!,
                    height: 14.h,
                  )
                : const SizedBox(),
            SizedBox(
              width: 4.w,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                  letterSpacing: 0.5,
                  color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
