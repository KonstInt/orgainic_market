import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/bottom_bar/common/bottom_nav_shadow.dart';
import 'package:organic_market/bottom_bar/home/widgets/about_us_widget.dart';
import 'package:organic_market/bottom_bar/home/widgets/already_bought_widget.dart';
import 'package:organic_market/bottom_bar/home/widgets/best_deals_widget.dart';
import 'package:organic_market/bottom_bar/home/widgets/brands_widget.dart';
import 'package:organic_market/bottom_bar/home/widgets/popular_category_widget.dart';
import 'package:organic_market/bottom_bar/home/widgets/promo_widget.dart';
import 'package:organic_market/utils/constants.dart';

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
            child: BottomNavShadow(),
          ),
        ],
      ),
    );
  }
}
/*import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/utils/constants.dart';

class BottomBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomBar(
      {super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Theme.of(context).primaryIconTheme.color,
          unselectedItemColor: Theme.of(context).iconTheme.color,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Center(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      MyAssets.kMyHomeIconPt1,
                      width: 21.w,
                      color: tabsRouter.activeIndex == 0
                          ? Theme.of(context).primaryIconTheme.color
                          : Theme.of(context).iconTheme.color,
                    ),
                    SvgPicture.asset(
                      MyAssets.kMyHomeIconPt2,
                      width: 21.r,
                      color: MyColors.kWhiteColor,
                    ),
                  ],
                ),
              ),
              label: 'Главная',
            ),
            bottomBarItem(
                selectedIndex: tabsRouter.activeIndex,
                index: 1,
                iconAsset: MyAssets.kCatalogIcon,
                label: 'Каталог',
                context: context),
            bottomBarItem(
              selectedIndex: tabsRouter.activeIndex,
              index: 2,
              iconAsset: MyAssets.kFindIcon,
              label: 'Поиск',
              context: context,
            ),
            bottomBarItem(
              selectedIndex: tabsRouter.activeIndex,
              index: 3,
              iconAsset: MyAssets.kBasketIcon,
              label: 'Корзина',
              context: context,
            ),
            bottomBarItem(
              selectedIndex: tabsRouter.activeIndex,
              index: 4,
              iconAsset: MyAssets.kProfileIcon,
              label: 'Профиль',
              context: context,
            )
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        ),
      
    );
  }
}

BottomNavigationBarItem bottomBarItem(
    {required int selectedIndex,
    required int index,
    required String iconAsset,
    required String label,
    required BuildContext context}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      iconAsset,
      width: 21.w,
      color: selectedIndex == index
          ? Theme.of(context).primaryIconTheme.color
          : Theme.of(context).iconTheme.color,
    ),
    label: label,
  );
}
*/