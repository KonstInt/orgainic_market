part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartLoadingState extends CartState{}
class CartLoadedState extends CartState{
  final List<CartProducts> products;
  CartLoadedState({required this.products});
}

class CartEmptyState extends CartState{}
class CartErrorState extends CartState{}
class CartInternetErrorState extends CartState{}