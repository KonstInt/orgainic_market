import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/bloc/bloc_view.dart';
import 'basket_no_item_page.dart';
import 'basket_page.dart';

@RoutePage()
class BasketWrapperPage extends StatelessWidget {
  const BasketWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if(state is CartLoadedState) {
          return BasketPage(cartProducts: state.products);
        } else {
          return const BasketNoItemPage();
        }
      },
    );
  }
}
