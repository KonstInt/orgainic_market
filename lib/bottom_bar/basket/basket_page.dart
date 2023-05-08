import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market/bottom_bar/basket/widgets/list_basket_items.dart';
import 'package:organic_market/bottom_bar/basket/widgets/total_price_widget.dart';
import 'package:organic_market/bottom_bar/common/horizontal_list_products.dart';
import 'package:organic_market/utils/constants.dart';

@RoutePage()
class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  bool deletedMode = false;
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
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 6.0.h, right: 10.w),
            child: IconButton(
              splashRadius: 20,
              highlightColor: MyColors.kRedColor.withOpacity(0.6),
              onPressed: () {
                setState(() {
                  deletedMode = !deletedMode;
                });
              },
              icon: SvgPicture.asset(MyAssets.kTrashIcon),
            ),
          ),
        ],
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
                SizedBox(
                  height: 20.h,
                ),
                ListBasketItems(deletedMode: deletedMode),
                Padding(
                  padding: EdgeInsets.only(left: 16.0.w, top: 25.h),
                  child: Text(
                    'Рекомендуем',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                ),
                HorizontalListProducts(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Divider(),
                ),
                TotalPriceWidget(),
                SizedBox(
                  height: MyConstants.kBottomNavBarHeight + 135.h,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MyConstants.kBottomNavBarHeight,
            left: 0,
            right: 0,
            child: Container(
              height: 105.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.r),
                  topLeft: Radius.circular(12.r),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).colorScheme.shadow,
                      spreadRadius: 1.h,
                      blurRadius: 10.h),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 16.0.h, bottom: 31.h, left: 16.w, right: 16.w),
                child: !deletedMode
                    ? TextButton(
                        onPressed: () {},
                        child: Text(
                          'Перейти к оформлению',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp),
                        ),
                      )
                    : TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            MyColors.kRedColor,
                          ),
                        ),
                        child: Text(
                          'Удалить',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp),
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
