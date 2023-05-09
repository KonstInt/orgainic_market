part of 'product_list_bloc.dart';

@immutable
abstract class ProductListEvent {}

class ProductListLoadEvent extends ProductListEvent{
  final int listId;
  ProductListLoadEvent({required this.listId});
}