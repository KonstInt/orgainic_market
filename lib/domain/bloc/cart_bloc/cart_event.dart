part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartLoadEvent extends CartEvent {
  final int cartId;
  CartLoadEvent({required this.cartId});
}

class CartCreateEvent extends CartEvent {}
class CartDeleteItemEvent extends CartEvent {
  final int itemIndex;
  CartDeleteItemEvent({required this.itemIndex});
}

class AddToCartEvent extends CartEvent {
  final int itemId;
  AddToCartEvent({required this.itemId});
}


