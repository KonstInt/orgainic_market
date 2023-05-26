import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/list_basket_items.dart';
import 'widgets/total_price_widget.dart';
import '../../../widgets/common/horizontal_list_products.dart';
import '../../../../domain/models/cart_model.dart';
import '../../../../utils/constants.dart';

// ignore: must_be_immutable
class BasketPage extends StatefulWidget {
  List<CartProducts> cartProducts;
  BasketPage({super.key, required this.cartProducts});

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
          MyStrings.kBasket,
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
                ListBasketItems(deletedMode: deletedMode, cartProducts: widget.cartProducts),
                Padding(
                  padding: EdgeInsets.only(left: 16.0.w, top: 25.h),
                  child: Text(
                    MyStrings.kRecommend,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                ),
                const HorizontalListProducts(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const Divider(),
                ),
                const TotalPriceWidget(),
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
                          MyStrings.kGoToCheckout,
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
                          MyStrings.kDelete,
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
