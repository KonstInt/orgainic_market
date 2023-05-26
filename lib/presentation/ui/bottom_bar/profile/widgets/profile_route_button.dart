import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../utils/constants.dart';

class ProfileRouteButton extends StatelessWidget {
  final String text;
  const ProfileRouteButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: InkWell(
        onTap: () {
          
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 16.w),
          child: Row(
    
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
              SvgPicture.asset(
                MyAssets.kRowRight,
                height: 9.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
