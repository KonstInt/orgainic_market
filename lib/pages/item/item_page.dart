import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market/bottom_bar/common/horizontal_list_products.dart';
import 'package:organic_market/pages/item/widgets/bottom_item.dart';
import 'package:organic_market/pages/item/widgets/item_picture_carousel.dart';
import 'package:organic_market/pages/item/widgets/item_tag.dart';
import 'package:organic_market/pages/item/widgets/list_item_tag.dart';
import 'package:organic_market/pages/item/widgets/price_bottom_item.dart';
import 'package:organic_market/utils/constants.dart';

@RoutePage()
class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

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
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        shadowColor: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
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
                  ItemPictureCarousel(productImages: ['d', 'd', 'd', 'd']),
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
                    padding:
                        EdgeInsets.only(left: 16.w, top: 15.h, right: 27.w),
                    child: Text(
                      'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          'Ближайшая дата доставки: завтра утром',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                fontSize: 16.sp,
                                color: Theme.of(context).colorScheme.primary,
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
                          color: Theme.of(context).colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(-1, 2),
                                color: Theme.of(context).colorScheme.shadow,
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
                        const Tab(
                          child: Text('0,4 кг'),
                        ),
                        Tab(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1,4 кг'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '-25%',
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
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: IndexedStack(
                      children: <Widget>[
                        Visibility(
                          child: Text(
                            'Альтернативный Флэнк стейк вырезается из нежирной брюшной части ближе к ребрам и имеет уникальный насыщенный вкус и яркий мясной аромат! Многогранен вариантами приготовления – отлично проявляется себя приготовленным целиком, или порезанным на слайсы. Здесь кулинарному экспериментатору есть где разгуляться! Просто пожарить, потушить или выдержать в маринаде – этот стейк подойдет для любых Ваших идей, благодаря своей текстуре с хорошо видимыми волокнами. Для мясного поголовья «Углече Поле» выбрана Абердин-Ангусская порода коров – признанная лучшей по качеству и вкусу мяса и стейков. При пастбищном содержании (то есть наши животные свободно пасутся на поле) мясо получается более диетическим и таким, каким оно и должно быть - в нем меньше жира, оно сочное, мягкое и обладает насыщенным вкусом.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 16.sp,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                          ),
                          maintainState: true,
                          visible: selectedTab2Index == 0,
                        ),
                        Visibility(
                          child: Container(
                            height: 1000,
                            color: Colors.red,
                            child: Center(
                              child: Text('Content right'),
                            ),
                          ),
                          maintainState: true,
                          visible: selectedTab2Index == 1,
                        ),
                        Visibility(
                          child: Container(
                            height: 200,
                            color: Colors.black,
                            child: Center(
                              child: Text('Content right'),
                            ),
                          ),
                          maintainState: true,
                          visible: selectedTab2Index == 2,
                        ),
                      ],
                      index: selectedTab2Index,
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
                    padding: EdgeInsets.only(left: 16.w, bottom: 18.h, top: 24.h),
                    child: Text(
                      'Рекомендуем',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20.sp
                      ),
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
                    productId: '1',
                    isSale: false,
                    mPrice: 3000,
                  ),
                  BottomItem(
                    productId: '1',
                    isSale: true,
                    mPrice: 3000,
                    sale: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
