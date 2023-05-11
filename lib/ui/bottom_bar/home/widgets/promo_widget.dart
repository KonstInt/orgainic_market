import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/utils/constants.dart';

class PromoWidget extends StatefulWidget {
  const PromoWidget({super.key});

  @override
  State<PromoWidget> createState() => _PromoWidgetState();
}

class _PromoWidgetState extends State<PromoWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 266.h,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 4,
        options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, reason) => setState(
            (() => activeIndex = index),
          ),
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 7),
          autoPlayAnimationDuration: const Duration(seconds: 3),
        ),
        itemBuilder: (context, index, realIndex) {
          return itemBuild(index);
        },
      ),
    );
  }

  Widget itemBuild(int index) {
    return Center(
      child: Container(
        height: 208.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          color: Color(0xFFFCEAE6),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //New
              blurRadius: 10.0,
              offset: Offset(-1, 1),
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16.w,
              top: 16.h,
              right: 86.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Настоящая икра без консервантов',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    width: 175.w,
                    child: Text(
                      'Попробуйте икру без химических добавок и консервантов',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(MyAssets.kMaskedIkraImage),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'Узнать больше',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
