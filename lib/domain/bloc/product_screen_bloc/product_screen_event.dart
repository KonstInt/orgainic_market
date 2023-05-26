part of 'product_screen_bloc.dart';

@immutable
abstract class ProductScreenEvent {}


class ProductScreenLoadEvent extends ProductScreenEvent{
    final int productId;
    ProductScreenLoadEvent({required this.productId});
}