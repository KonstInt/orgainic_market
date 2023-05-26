import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItemProduct extends StatelessWidget {
  const ShimmerItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 168.w,
      margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 10.h, bottom: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
        color: Theme.of(context).colorScheme.onBackground,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow, //New
            blurRadius: 3.0,
            offset: Offset(-0.5.w, 0.5.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 130.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 5.w, top: 6.h, right: 5),
            child:  SizedBox(
            width: double.infinity,
            height: 12.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(5.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 4.h, right: 5),
            child:  SizedBox(
            width: double.infinity,
            height: 12.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(5.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 10.h),
            child: SizedBox(
            width: 45.w,
            height: 14.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(5.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          ),
         
          const Spacer(),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                child:  SizedBox(
            width: 80.w,
            height: 22.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(5.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: SizedBox(
            width: 55.w,
            height: 30.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(15.r),
              ),
              child: Shimmer.fromColors(
                baseColor: Theme.of(context).primaryColor,
                highlightColor: const Color.fromARGB(255, 209, 255, 163),
                enabled: true,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
