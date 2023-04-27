// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:organic_market/bottom_bar/basket/basket_page.dart' as _i4;
import 'package:organic_market/bottom_bar/category/category_page.dart' as _i2;
import 'package:organic_market/bottom_bar/find/find_page.dart' as _i5;
import 'package:organic_market/bottom_bar/home/home_page.dart' as _i1;
import 'package:organic_market/bottom_bar_wrapper.dart' as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryPage(),
      );
    },
    BottomBarWrapperRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomBarWrapperPage(),
      );
    },
    BasketRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BasketPage(),
      );
    },
    FindRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FindPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryPage]
class CategoryRoute extends _i6.PageRouteInfo<void> {
  const CategoryRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BottomBarWrapperPage]
class BottomBarWrapperRoute extends _i6.PageRouteInfo<void> {
  const BottomBarWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BottomBarWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomBarWrapperRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BasketPage]
class BasketRoute extends _i6.PageRouteInfo<void> {
  const BasketRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BasketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FindPage]
class FindRoute extends _i6.PageRouteInfo<void> {
  const FindRoute({List<_i6.PageRouteInfo>? children})
      : super(
          FindRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
