import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/organic_market_repository.dart';
import '../../../internal/dependencies/repository_module.dart';
import '../../models/short_product_model.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  OrganicMarketRepository repository;
  List<ShortProductModel> product_list = [];
  ProductListBloc({required this.repository}) : super(ProductListInitial()) {
    on<ProductListLoadEvent>(_onProductLoad);
    
  }

  FutureOr<void> _onProductLoad(
      ProductListLoadEvent event, Emitter<ProductListState> emit) async {
    emit(ProductListLoadingState());
    try {
      if (event.category != null) {
        product_list =
            await repository.getProductList(1, '/category/${event.category!}');
      } else {
        product_list = await repository.getProductList(1, '');
      }
      emit(ProductListLoadedState(productList: product_list));
    } catch (e) {
      if (e == SocketException) {
        emit(ProductListInternetErrorState());
      } else {
        emit(ProductListErrorState());
      }
    }
  }
}
