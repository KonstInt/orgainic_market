import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/bottom_bar/category/widgets/category_grid_widget.dart';
import 'package:organic_market/bottom_bar/category/widgets/top_buttons_widget.dart';
import 'package:organic_market/utils/constants.dart';

import '../common/bottom_nav_shadow.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
              'assets/icons/other/car.svg',
            ),
            SizedBox(width: 8.w),
            Text(
              'ул. Пушкина 15, д. 20, кв. 113',
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
              children: [
                TopButtons(),
                SizedBox(
                  height: 20.h,
                ),
                CategoryGridWidget(),
                SizedBox(
                  height: 30.h+MyConstants.kBottomNavBarHeight,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MyConstants.kBottomNavBarHeight,
            left: 0,
            right: 0,
            child: BottomNavShadow(),
          ),
        ],
      ),
    );
  }
}
