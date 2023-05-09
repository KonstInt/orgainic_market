part of 'product_screen_bloc.dart';

@immutable
abstract class ProductScreenState {}

class ProductScreenInitial extends ProductScreenState {}

class ProductScreenLoadingState extends ProductScreenState{}

class ProductScreenLoadedState extends ProductScreenState{
  final ProductModel product;
  ProductScreenLoadedState({required this.product});
}

class ProductScreenInternetErrorState extends ProductScreenState{}
class ProductScreenErrorState extends ProductScreenState{}