import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/bloc/bloc_view.dart';
import 'dependencies/repository_module.dart';
import '../domain/routes/router.gr.dart';
import '../presentation/ui/bottom_bar/bottom_bar.dart';

@RoutePage()
class BottomBarWrapperPage extends StatelessWidget {
  const BottomBarWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(repository: RepositoryModule.getRepository())..add(CartLoadEvent(cartId: 1)),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return AutoTabsScaffold(
              extendBody: true,
              routes: [
                HomeRoute(),
                const CategoryRoute(),
                const FindRoute(),
                const BasketWrapperRoute(),
                const ProfileRoute(),
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
