import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textInf(String text) {
      return InkWell(
        onTap: () {},
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(9.5.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 4.w),
                    child: Text(
                      MyStrings.kAboutCompany,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 4.w),
                    child: Text(
                      MyStrings.kAboutOrganic,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textInf(MyStrings.kDelivery),
              textInf(MyStrings.kPayment),
              textInf(MyStrings.kSupport),
              textInf(MyStrings.kCertificates),
            ],
          ),
        ),
      ],
    );
  }
}
