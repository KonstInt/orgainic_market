import 'dart:io' show Platform;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemPictureCarousel extends StatefulWidget {
  final List<String> productImages;

  const ItemPictureCarousel({super.key, required this.productImages});

  @override
  State<ItemPictureCarousel> createState() => _ItemPictureCarouselState();
}

class _ItemPictureCarouselState extends State<ItemPictureCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: widget.productImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = widget.productImages[index];
            return Image.network(
              urlImage,
              fit: BoxFit.fill,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: Platform.isAndroid ? CircularProgressIndicator(
                    color: Theme.of(context).primaryColor) : CupertinoActivityIndicator(color: Theme.of(context).primaryColor,),  
                );
              },
            );
          },
          options: CarouselOptions(
            height: 250.h,
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(
                    (() => activeIndex = index),
                  )),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.0.h),
          child: SizedBox(
            height: 5.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                //padding: EdgeInsets.symmetric(horizontal: 10.w),
                itemCount: widget.productImages.length,
                itemBuilder: (context, index) {
                  return activeIndex == index
                      ? Container(
                          width: 30.w,
                         
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.r),
                            ),
                            color: Colors.white,
                          ),
                        )
                      : Container(
                          width: 10,
                          
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        );
                }),
          ),
        )
      ],
    );
  }

  Widget buildImage(String urlImage, int index, int size) {
    return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 15.sp, right: 14.sp),
            child: Image.network(
              urlImage,
              fit: BoxFit.fill,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
        ]);
  }
}
