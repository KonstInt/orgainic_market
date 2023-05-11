import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/bottom_bar/category/category_page.dart';
import 'package:organic_market/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: BottomBarWrapperRoute.page,
          children: [
            /////////////
            AutoRoute(
              path: ':empty_home',
              page: EmptyHomeRoute.page,
              children: [
                AutoRoute(
                  path: ':home',
                  page: HomeRoute.page,
                ),
                CustomRoute(
                    path: ':item',
                    page: ItemRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 100,
                    reverseDurationInMilliseconds: 100),
                AutoRoute(
                  path: ':subcategory',
                  page: SubCategoryRoute.page,
                ),
                AutoRoute(
                  path: ':subcategory_list',
                  page: SubCategoryListRoute.page,
                ),
              ],
            ),
            /////////////
            AutoRoute(
              path: ':empty_category',
              page: EmptyCategoryRoute.page,
              children: [
                AutoRoute(
                  path: ':category',
                  page: CategoryRoute.page,
                ),
                CustomRoute(
                    path: ':item',
                    page: ItemRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 100,
                    reverseDurationInMilliseconds: 100),
                AutoRoute(
                  path: ':subcategory',
                  page: SubCategoryRoute.page,
                ),
                AutoRoute(
                  path: ':subcategory_list',
                  page: SubCategoryListRoute.page,
                ),
              ],
            ),
            //////////////
            AutoRoute(
              path: ':empty_find',
              page: EmptyFindRoute.page,
              children: [
                AutoRoute(
                  path: ':find',
                  page: FindRoute.page,
                ),
                CustomRoute(
                    path: ':item',
                    page: ItemRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 100,
                    reverseDurationInMilliseconds: 100),
              ],
            ),
            ///////////////
            AutoRoute(
              path: ':empty_basket',
              page: EmptyBasketRoute.page,
              children: [
                AutoRoute(
                  path: ':basket',
                  page: BasketWrapperRoute.page,
                ),
                
                CustomRoute(
                    path: ':item',
                    page: ItemRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 100,
                    reverseDurationInMilliseconds: 100),
              ],
            ),
            //////////////
            AutoRoute(
              path: ':empty_category',
              page: EmptyProfileRoute.page,
              children: [
                AutoRoute(
                  path: ':profile',
                  page: ProfileRoute.page,
                ),
                CustomRoute(
                    path: ':item',
                    page: ItemRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 100,
                    reverseDurationInMilliseconds: 100),
              ],
            ),
          ],
        )
      ];
}
