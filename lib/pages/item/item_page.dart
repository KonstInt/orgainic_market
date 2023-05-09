import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:organic_market/bloc/product_screen_bloc/product_screen_bloc.dart';
import 'package:organic_market/bottom_bar/common/horizontal_list_products.dart';
import 'package:organic_market/pages/item/widgets/bottom_item.dart';
import 'package:organic_market/pages/item/widgets/item_picture_carousel.dart';
import 'package:organic_market/pages/item/widgets/item_tag.dart';
import 'package:organic_market/pages/item/widgets/list_item_tag.dart';
import 'package:organic_market/pages/item/widgets/price_bottom_item.dart';
import 'package:organic_market/utils/constants.dart';

@RoutePage()
class ItemPage extends StatefulWidget {
  int productId;
  ItemPage({super.key, required this.productId});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> with TickerProviderStateMixin {
  int activeCarouselIndex = 0;
  int selectedTab2Index = 0;
  late TabController _tabController;
  late TabController _tabController2;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController2 =
        TabController(initialIndex: selectedTab2Index, length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductScreenBloc()
        ..add(ProductScreenLoadEvent(productId: widget.productId)),
      child: BlocBuilder<ProductScreenBloc, ProductScreenState>(
        builder: (context, state) {
          if(state is ProductScreenLoadedState)
          {return Scaffold(
            appBar: AppBar(
              iconTheme: Theme.of(context).iconTheme,
              shadowColor:
                  Theme.of(context).colorScheme.shadow.withOpacity(0.5),
              elevation: 5,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              centerTitle: true,
              title: Text(
                'Говядина',
                style: Theme.of(context).textTheme.titleMedium,
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
                Transform.translate(
                  offset: Offset(0, -12.r),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemPictureCarousel(
                            productImages: [state.product.image, state.product.image, state.product.image]),
                        SizedBox(
                          height: 20.h,
                        ),
                        const ListItemTag(
                          isSale: true,
                          isOrganic: true,
                          isExpressDelivery: true,
                          saleSize: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, top: 15.h, right: 27.w),
                          child: Text(
                            state.product.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 20.sp,
                                  height: 1.1.h,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                            ),
                            SvgPicture.asset(MyAssets.kCarIcon),
                            SizedBox(
                              width: 9.w,
                            ),
                            Expanded(
                              child: Text(
                                DateFormat('MM/dd/yyyy до kk:mm').format(state.product.timeDelivered),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontSize: 16.sp,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          height: 45,
                          decoration: BoxDecoration(
                            color: MyColors.kGreyChipBackground,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TabBar(
                            controller: _tabController,
                            padding: EdgeInsets.all(4.r),
                            indicator: BoxDecoration(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(-1, 2),
                                      color:
                                          Theme.of(context).colorScheme.shadow,
                                      blurRadius: 10.h),
                                ]), // BoxDecoration
                            labelColor: MyColors.kBlackColor,
                            unselectedLabelColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 13.sp),
                            tabs: [
                              Tab(
                                child: Text('${state.product.baseMeasure.toStringAsFixed(2)} ${state.product.measureType}'),
                              ),
                              Tab(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(state.product.isSale ? '${state.product.saleMeasure!.toStringAsFixed(2)} ${state.product.measureType}': 
                                    '${state.product.bigMeasure!.toStringAsFixed(2)} ${state.product.measureType}'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      state.product.isSale ? '-${state.product.saleSize}%':'',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontSize: 13.sp,
                                              color: MyColors.kRedColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        TabBar(
                          isScrollable: true,
                          controller: _tabController2,
                          padding: EdgeInsets.all(4.r),
                          indicator: BoxDecoration(),
                          labelColor: MyColors.kBlackColor,
                          unselectedLabelColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 16.sp),
                          onTap: (int index) {
                            setState(() {
                              selectedTab2Index = index;
                              _tabController2.animateTo(index);
                            });
                          },
                          tabs: const [
                            Tab(
                              text: 'Описание',
                            ),
                            Tab(
                              text: 'Характеристики',
                            ),
                            Tab(
                              text: 'Отзывы',
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                          child: IndexedStack(
                            index: selectedTab2Index,
                            children: <Widget>[
                              Visibility(
                                maintainState: true,
                                visible: selectedTab2Index == 0,
                                child: Text(
                                  state.product.description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 16.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                ),
                              ),
                              Visibility(
                               maintainState: true,
                                visible: selectedTab2Index == 1,
                               child: Text(
                                  'Характеристики',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 16.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                ),
                              ),
                              Visibility(
                                maintainState: true,
                                visible: selectedTab2Index == 2,
                                child: Text(
                                  'Отзывы',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 16.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 64.h,
                            color: MyColors.kGreyChipBackground,
                            padding: EdgeInsets.only(left: 27.w, right: 36.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Бренд «Углече Поле»',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                ),
                                SvgPicture.asset(
                                  MyAssets.kRowRight,
                                  height: 10.r,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, bottom: 18.h, top: 24.h),
                          child: Text(
                            'Рекомендуем',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 20.sp),
                          ),
                        ),
                        HorizontalListProducts(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Divider(),
                        ),
                        SizedBox(
                          height: MyConstants.kBottomNavBarHeight + 135.h,
                        ),
                      ],
                    ),
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
                    child: TabBarView(
                      controller: _tabController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        BottomItem(
                          productId: state.product.productId,
                          isSale: false,
                          mPrice: state.product.price,
                        ),
                        BottomItem(
                          productId: state.product.productId,
                          isSale: state.product.isSale,
                          mPrice: state.product.isSale ? state.product.saleMeasure!*state.product.price : state.product.bigMeasure!*state.product.price,
                          sale: state.product.saleSize,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
        else
        {
            return SizedBox(height: 0,);
        }
      }
      ),
    );
  }
}
