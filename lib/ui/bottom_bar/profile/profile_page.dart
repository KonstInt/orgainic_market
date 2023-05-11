import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/widgets/common/bottom_nav_shadow.dart';
import 'package:organic_market/ui/bottom_bar/profile/widgets/profile_card.dart';
import 'package:organic_market/ui/bottom_bar/profile/widgets/profile_route_button.dart';
import 'package:organic_market/ui/bottom_bar/profile/widgets/profile_user_header.dart';
import 'package:organic_market/utils/constants.dart';

import '../../../widgets/common/product_category.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
        elevation: 5,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: Text(
          'Профиль',
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
          LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(height: 32.h),
                        ProfileUserHeader(),
                        SizedBox(
                          height: 18.h,
                        ),
                        ProfileCard(),
                        SizedBox(
                          height: 30.h,
                        ),
                        ProfileRouteButton(text: 'Личные данные'),
                        ProfileRouteButton(text: 'Мои заказы'),
                        ProfileRouteButton(text: 'Мои адреса'),
                        ProfileRouteButton(text: 'Способы оплаты'),
                        ProfileRouteButton(text: 'Связаться с нами'),
                        Spacer(),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            children: [
                              SvgPicture.asset(MyAssets.kLogoutIcon),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Выйти",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50.h + MyConstants.kBottomNavBarHeight),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: MyConstants.kBottomNavBarHeight,
            left: 0,
            right: 0,
            child: BottomNavShadow(),
          )
        ],
      ),
    );
  }
}
