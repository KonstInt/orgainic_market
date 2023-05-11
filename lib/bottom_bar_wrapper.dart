import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/routes/router.gr.dart';

import 'bloc/cart_bloc/cart_bloc.dart';
import 'bottom_bar/bottom_bar.dart';

@RoutePage()
class BottomBarWrapperPage extends StatelessWidget {
  const BottomBarWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc()..add(CartLoadEvent(cartId: 1)),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return AutoTabsScaffold(
              extendBody: true,
              routes: [
                HomeRoute(),
                CategoryRoute(),
                FindRoute(),
                BasketWrapperRoute(),
                ProfileRoute(),
              ],
              bottomNavigationBuilder: (_, tabsRouter) {
                return BottomBar(
                  tabsRouter: tabsRouter,
                );
              });
        },
      ),
    );
  }
}
