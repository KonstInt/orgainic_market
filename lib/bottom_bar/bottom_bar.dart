import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/bloc/cart_bloc/cart_bloc.dart';
import 'package:organic_market/utils/constants.dart';
import 'package:badges/badges.dart' as badges;
import '../routes/router.gr.dart';

class BottomBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomBar({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0.r),
          topRight: Radius.circular(12.0.r),
        ),
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
              withBadge: false,
              label: 'Каталог',
              context: context),
          bottomBarItem(
            selectedIndex: tabsRouter.activeIndex,
            index: 2,
            iconAsset: MyAssets.kFindIcon,
            withBadge: false,
            label: 'Поиск',
            context: context,
          ),
          bottomBarItem(
            selectedIndex: tabsRouter.activeIndex,
            index: 3,
            iconAsset: MyAssets.kBasketIcon,
            withBadge: true,
            badgeDigit: context.read<CartBloc>().cartModel?.productList != null
                ? context.read<CartBloc>().cartModel!.productList.length
                : 0,
            label: 'Корзина',
            context: context,
          ),
          bottomBarItem(
            selectedIndex: tabsRouter.activeIndex,
            index: 4,
            iconAsset: MyAssets.kProfileIcon,
            withBadge: false,
            label: 'Профиль',
            context: context,
          )
        ],
        currentIndex: tabsRouter.activeIndex,
        onTap: (index) {
          if (index == tabsRouter.activeIndex) {
            if (tabsRouter.currentPath.contains("/:")) {
              switch (index) {
                case 1:
                  AutoRouter.of(context).navigate(CategoryRoute());
                  break;
                case 2:
                  AutoRouter.of(context).navigate(FindRoute());
                  break;
                case 3:
                  AutoRouter.of(context).navigate(BasketWrapperRoute());
                  break;
                case 4:
                  AutoRouter.of(context).navigate(ProfileRoute());
                  break;
                default:
                  AutoRouter.of(context).navigate(HomeRoute());
              }
            }
          } else {
            tabsRouter.setActiveIndex(index);
          }
        },
      ),
    );
  }
}

BottomNavigationBarItem bottomBarItem(
    {required int selectedIndex,
    required int index,
    required String iconAsset,
    required String label,
    required bool withBadge,
    int? badgeDigit,
    required BuildContext context}) {
  withBadge ? badgeDigit?? 0 : false;
  return BottomNavigationBarItem(
    icon: withBadge
        ? badges.Badge(
            showBadge: badgeDigit != 0,
            badgeContent: Text(
              badgeDigit!.toString(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 11.sp,
                  ),
            ),
            badgeAnimation: const badges.BadgeAnimation.slide(
              slideTransitionPositionTween: badges.SlideTween(
                  begin: Offset(-0.2, 0.3), end: Offset(0.0, 0.0)),
            ),
            position: badges.BadgePosition.topEnd(top: -14),
            child: SvgPicture.asset(
              iconAsset,
              width: 21.w,
              color: selectedIndex == index
                  ? Theme.of(context).primaryIconTheme.color
                  : Theme.of(context).iconTheme.color,
            ),
          )
        : SvgPicture.asset(
            iconAsset,
            width: 21.w,
            color: selectedIndex == index
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).iconTheme.color,
          ),
    label: label,
  );
}
