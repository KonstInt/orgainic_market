import 'package:auto_route/auto_route.dart';
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
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
            ),
            AutoRoute(
              path: 'category',
              page: CategoryRoute.page,
            ),
            AutoRoute(
              path: 'find',
              page: FindRoute.page,
            ),
            AutoRoute(
              path: 'basket',
              page: BasketRoute.page,
            ),
          ],
        )
      ];
}
