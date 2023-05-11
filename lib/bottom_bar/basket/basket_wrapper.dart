import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/bloc/cart_bloc/cart_bloc.dart';
import 'package:organic_market/bottom_bar/basket/basket_no_item_page.dart';
import 'package:organic_market/bottom_bar/basket/basket_page.dart';

@RoutePage()
class BasketWrapperPage extends StatelessWidget {
  const BasketWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if(state is CartLoadedState)
        return BasketPage(cartProducts: state.products);
        else
        return BasketNoItemPage();
      },
    );
  }
}
