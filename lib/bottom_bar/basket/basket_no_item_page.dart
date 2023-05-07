import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/common/bottom_nav_shadow.dart';
import 'package:organic_market/routes/router.gr.dart';
import 'package:organic_market/utils/constants.dart';

@RoutePage()
class BasketNoItemPage extends StatelessWidget {
  const BasketNoItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
        elevation: 5,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: Text(
          'Корзина',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
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
          Positioned(
            top: 0,
            bottom: MyConstants.kBottomNavBarHeight,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'В корзине пока пусто',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 8.h,),
                Text(
                  'Добавленные товары будут отображаться здесь',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                SizedBox(height: 38.h,),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).navigate(BottomBarWrapperRoute(children: [EmptyHomeRoute( children: [HomeRoute()])]));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
                    child: Text(
                      'Отправиться за покупками',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground
                          ),
                    ),
                  ),
                )
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
