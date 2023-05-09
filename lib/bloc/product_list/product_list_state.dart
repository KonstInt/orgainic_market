part of 'product_list_bloc.dart';

@immutable
abstract class ProductListState {}

class ProductListInitial extends ProductListState {}

class ProductListLoadingState extends ProductListState {}

class ProductListLoadedState extends ProductListState {
  final List<ShortProductModel> productList;
  ProductListLoadedState({required this.productList});
}

class ProductListErrorState extends ProductListState {}

class ProductListInternetErrorState extends ProductListState {}