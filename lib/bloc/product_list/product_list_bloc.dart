import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/dio/app_dio_api.dart';
import 'package:organic_market/models/short_product_model.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  List<ShortProductModel> product_list = [];
  ProductListBloc() : super(ProductListInitial()) {
    on<ProductListLoadEvent>(_onProductLoad);
  }

  FutureOr<void> _onProductLoad(ProductListLoadEvent event, Emitter<ProductListState> emit) async {
  emit(ProductListLoadingState());
    try {
      product_list = await AppDioApi().getProductList(1);
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
