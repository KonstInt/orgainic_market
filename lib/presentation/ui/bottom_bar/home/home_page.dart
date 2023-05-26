import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';
import '../../../widgets/common/bottom_nav_shadow.dart';
import 'widgets/about_us_widget.dart';
import 'widgets/already_bought_widget.dart';
import 'widgets/best_deals_widget.dart';
import 'widgets/brands_widget.dart';
import 'widgets/popular_category_widget.dart';
import 'widgets/promo_widget.dart';


@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
        elevation: 5,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              MyAssets.kCarIcon,
            ),
            SizedBox(width: 8.w),
            Text(
             MyStrings.kAddress,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PromoWidget(),
                const PopularCategoryWidget(),
                SizedBox(height: 20.h),
                const BestDealsWidget(),
                
                SizedBox(height: 20.h),
                const AlreadyBoughtWidget(),
                
                SizedBox(height: 20.h),
                BrandsWidget(),
                SizedBox(height: 20.h),
                const AboutUsWidget(),
                SizedBox(height: 50.h + MyConstants.kBottomNavBarHeight),
              ],
            ),
          ),
          Positioned(
            bottom: MyConstants.kBottomNavBarHeight,
            left: 0,
            right: 0,
            child: const BottomNavShadow(),
          ),
        ],
      ),
    );
  }
  
  
  
}
