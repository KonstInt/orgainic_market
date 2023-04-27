import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavShadow extends StatelessWidget {
  const BottomNavShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 15),
      child: Container(
        height: 15,
        decoration: BoxDecoration(
          
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                spreadRadius: 4.h,
                blurRadius: 10.h),
          ],
        ),
      ),
    );
  }
}
