import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/common/bottom_nav_shadow.dart';
import 'package:organic_market/pages/subcategory_list/widgets/chip_categories.dart';
import 'package:organic_market/pages/subcategory_list/widgets/list_product_categories.dart';
import 'package:organic_market/utils/constants.dart';

@RoutePage()
class SubCategoryListPage extends StatelessWidget {
  final String subcategory;
  const SubCategoryListPage({super.key,  required this.subcategory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
          elevation: 5,
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          centerTitle: true,
          title: Column(
            children: [
              Text(
                'Категория',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0.h), child: ChipCategories()),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
           // SingleChildScrollView(child: 
            ListProductCategories(subcategory: subcategory),
           // ),
            Positioned(
              bottom: MyConstants.kBottomNavBarHeight,
              left: 0,
              right: 0,
              child: BottomNavShadow(),
            ),
          ],
       // ),
      ),
    );
  }
}
