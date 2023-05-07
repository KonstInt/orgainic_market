// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:organic_market/bottom_bar/basket/basket_no_item_page.dart'
    as _i11;
import 'package:organic_market/bottom_bar/basket/basket_page.dart' as _i2;
import 'package:organic_market/bottom_bar/category/category_page.dart' as _i3;
import 'package:organic_market/bottom_bar/find/find_page.dart' as _i5;
import 'package:organic_market/bottom_bar/home/home_page.dart' as _i1;
import 'package:organic_market/bottom_bar/profile/profile_page.dart' as _i4;
import 'package:organic_market/bottom_bar_wrapper.dart' as _i6;
import 'package:organic_market/pages/empty/empty_page.dart' as _i7;
import 'package:organic_market/pages/item/item_page.dart' as _i8;
import 'package:organic_market/pages/subcategory/subcategory_page.dart' as _i9;
import 'package:organic_market/pages/subcategory_list/subcategoty_list_page.dart'
    as _i10;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    BasketRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BasketPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
    FindRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FindPage(),
      );
    },
    BottomBarWrapperRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BottomBarWrapperPage(),
      );
    },
    EmptyHomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyHomePage(),
      );
    },
    EmptyCategoryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyCategoryPage(),
      );
    },
    EmptyFindRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyFindPage(),
      );
    },
    EmptyBasketRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyBasketPage(),
      );
    },
    EmptyProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyProfilePage(),
      );
    },
    ItemRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ItemPage(),
      );
    },
    SubCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<SubCategoryRouteArgs>(
          orElse: () => const SubCategoryRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SubCategoryPage(key: args.key),
      );
    },
    SubCategoryListRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SubCategoryListPage(),
      );
    },
    BasketNoItemRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.BasketNoItemPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<HomeRouteArgs> page =
      _i12.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.BasketPage]
class BasketRoute extends _i12.PageRouteInfo<void> {
  const BasketRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BasketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryPage]
class CategoryRoute extends _i12.PageRouteInfo<void> {
  const CategoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FindPage]
class FindRoute extends _i12.PageRouteInfo<void> {
  const FindRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FindRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BottomBarWrapperPage]
class BottomBarWrapperRoute extends _i12.PageRouteInfo<void> {
  const BottomBarWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BottomBarWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomBarWrapperRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyHomePage]
class EmptyHomeRoute extends _i12.PageRouteInfo<void> {
  const EmptyHomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyHomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyCategoryPage]
class EmptyCategoryRoute extends _i12.PageRouteInfo<void> {
  const EmptyCategoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyCategoryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyFindPage]
class EmptyFindRoute extends _i12.PageRouteInfo<void> {
  const EmptyFindRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyFindRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyFindRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyBasketPage]
class EmptyBasketRoute extends _i12.PageRouteInfo<void> {
  const EmptyBasketRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyBasketRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyBasketRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EmptyProfilePage]
class EmptyProfileRoute extends _i12.PageRouteInfo<void> {
  const EmptyProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ItemPage]
class ItemRoute extends _i12.PageRouteInfo<void> {
  const ItemRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'ItemRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SubCategoryPage]
class SubCategoryRoute extends _i12.PageRouteInfo<SubCategoryRouteArgs> {
  SubCategoryRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SubCategoryRoute.name,
          args: SubCategoryRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static const _i12.PageInfo<SubCategoryRouteArgs> page =
      _i12.PageInfo<SubCategoryRouteArgs>(name);
}

class SubCategoryRouteArgs {
  const SubCategoryRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SubCategoryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.SubCategoryListPage]
class SubCategoryListRoute extends _i12.PageRouteInfo<void> {
  const SubCategoryListRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SubCategoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryListRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.BasketNoItemPage]
class BasketNoItemRoute extends _i12.PageRouteInfo<void> {
  const BasketNoItemRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BasketNoItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketNoItemRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
