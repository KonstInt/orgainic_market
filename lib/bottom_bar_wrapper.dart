import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/routes/router.gr.dart';

import 'bottom_bar/bottom_bar.dart';

@RoutePage()
class BottomBarWrapperPage extends StatefulWidget {
  const BottomBarWrapperPage({super.key});

  @override
  State<BottomBarWrapperPage> createState() => _BottomBarWrapperPageState();
}

class _BottomBarWrapperPageState extends State<BottomBarWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        extendBody: true,
        routes: const [
          HomeRoute(),
          CategoryRoute(),
          FindRoute(),
          BasketRoute()
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomBar(
            tabsRouter: tabsRouter,
          );
        });
  }
}
