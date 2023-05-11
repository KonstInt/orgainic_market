// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:organic_market/ui/bottom_bar/basket/basket_wrapper.dart' as _i2;
import 'package:organic_market/ui/bottom_bar/category/category_page.dart' as _i3;
import 'package:organic_market/ui/bottom_bar/find/find_page.dart' as _i5;
import 'package:organic_market/ui/bottom_bar/home/home_page.dart' as _i1;
import 'package:organic_market/ui/bottom_bar/profile/profile_page.dart' as _i4;
import 'package:organic_market/bottom_bar_wrapper.dart' as _i6;
import 'package:organic_market/ui/pages/empty/empty_page.dart' as _i7;
import 'package:organic_market/ui/pages/item/item_page.dart' as _i8;
import 'package:organic_market/ui/pages/subcategory/subcategory_page.dart' as _i9;
import 'package:organic_market/ui/pages/subcategory_list/subcategoty_list_page.dart'
    as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    BasketWrapperRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BasketWrapperPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
    FindRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FindPage(),
      );
    },
    BottomBarWrapperRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BottomBarWrapperPage(),
      );
    },
    EmptyHomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyHomePage(),
      );
    },
    EmptyCategoryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyCategoryPage(),
      );
    },
    EmptyFindRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyFindPage(),
      );
    },
    EmptyBasketRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyBasketPage(),
      );
    },
    EmptyProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyProfilePage(),
      );
    },
    ItemRoute.name: (routeData) {
      final args = routeData.argsAs<ItemRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ItemPage(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    SubCategoryRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SubCategoryPage(),
      );
    },
    SubCategoryListRoute.name: (routeData) {
      final args = routeData.argsAs<SubCategoryListRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SubCategoryListPage(
          key: args.key,
          subcategory: args.subcategory,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i11.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<HomeRouteArgs> page =
      _i11.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.BasketWrapperPage]
class BasketWrapperRoute extends _i11.PageRouteInfo<void> {
  const BasketWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BasketWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketWrapperRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryPage]
class CategoryRoute extends _i11.PageRouteInfo<void> {
  const CategoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FindPage]
class FindRoute extends _i11.PageRouteInfo<void> {
  const FindRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FindRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BottomBarWrapperPage]
class BottomBarWrapperRoute extends _i11.PageRouteInfo<void> {
  const BottomBarWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BottomBarWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomBarWrapperRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyHomePage]
class EmptyHomeRoute extends _i11.PageRouteInfo<void> {
  const EmptyHomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyHomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyCategoryPage]
class EmptyCategoryRoute extends _i11.PageRouteInfo<void> {
  const EmptyCategoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyCategoryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyFindPage]
class EmptyFindRoute extends _i11.PageRouteInfo<void> {
  const EmptyFindRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyFindRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyFindRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyBasketPage]
class EmptyBasketRoute extends _i11.PageRouteInfo<void> {
  const EmptyBasketRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyBasketRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyBasketRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyProfilePage]
class EmptyProfileRoute extends _i11.PageRouteInfo<void> {
  const EmptyProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          EmptyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ItemPage]
class ItemRoute extends _i11.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i12.Key? key,
    required int productId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ItemRoute.name,
          args: ItemRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ItemRoute';

  static const _i11.PageInfo<ItemRouteArgs> page =
      _i11.PageInfo<ItemRouteArgs>(name);
}

class ItemRouteArgs {
  const ItemRouteArgs({
    this.key,
    required this.productId,
  });

  final _i12.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i9.SubCategoryPage]
class SubCategoryRoute extends _i11.PageRouteInfo<void> {
  const SubCategoryRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SubCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SubCategoryListPage]
class SubCategoryListRoute
    extends _i11.PageRouteInfo<SubCategoryListRouteArgs> {
  SubCategoryListRoute({
    _i12.Key? key,
    required String subcategory,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SubCategoryListRoute.name,
          args: SubCategoryListRouteArgs(
            key: key,
            subcategory: subcategory,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoryListRoute';

  static const _i11.PageInfo<SubCategoryListRouteArgs> page =
      _i11.PageInfo<SubCategoryListRouteArgs>(name);
}

class SubCategoryListRouteArgs {
  const SubCategoryListRouteArgs({
    this.key,
    required this.subcategory,
  });

  final _i12.Key? key;

  final String subcategory;

  @override
  String toString() {
    return 'SubCategoryListRouteArgs{key: $key, subcategory: $subcategory}';
  }
}
