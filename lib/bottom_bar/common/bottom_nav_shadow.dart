import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavShadow extends StatelessWidget {
  const BottomNavShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.r),
          topLeft: Radius.circular(12.r),
        ),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              spreadRadius: 4.h,
              blurRadius: 10.h),
        ],
      ),
    );
  }
}
