import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/constants.dart';

class BrandsWidget extends StatelessWidget {
  BrandsWidget({super.key});
  final List<String> tmp = [
    MyAssets.kBrandSashaImage,
    MyAssets.kBrandUglicheImage,
    MyAssets.kBrandIchocImage,
    MyAssets.kBrandUfeelgoodImage,
    MyAssets.kBrandPabloImage,
    MyAssets.kBrandWeledaImage
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, bottom: 10.h),
          child: Text(
            MyStrings.kBrands,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tmp.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return iconBuilder(index, context);
          },
        ),
      ],
    );
  }

  Widget iconBuilder(int index, BuildContext context) {
    return Image.asset(
      tmp[index],
    );
  }
}
