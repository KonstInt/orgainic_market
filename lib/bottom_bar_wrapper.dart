import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_market/routes/router.gr.dart';

import 'bottom_bar/bottom_bar.dart';

@RoutePage()
class BottomBarWrapperPage extends StatelessWidget {
  const BottomBarWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        
        extendBody: true,
        routes: [
          HomeRoute(),
          CategoryRoute(),
          FindRoute(),
          BasketNoItemRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomBar(
            tabsRouter: tabsRouter,
          );
        });
  }
}
