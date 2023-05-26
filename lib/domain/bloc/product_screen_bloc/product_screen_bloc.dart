import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/organic_market_repository.dart';
import '../../models/product_model.dart';
part 'product_screen_event.dart';
part 'product_screen_state.dart';

class ProductScreenBloc extends Bloc<ProductScreenEvent, ProductScreenState> {
  OrganicMarketRepository repository;
  ProductScreenBloc({required this.repository}) : super(ProductScreenInitial()) {
    on<ProductScreenLoadEvent>(_onProductLoad);
  }

  FutureOr<void> _onProductLoad(ProductScreenLoadEvent event, Emitter<ProductScreenState> emit) async {
    emit(ProductScreenLoadingState());
    try {
      final ProductModel product = await repository.getProduct(event.productId);
      emit(ProductScreenLoadedState(product: product));
      
    } catch (e) {
      if (e == SocketException) {
        emit(ProductScreenInternetErrorState());
      } else {
        emit(ProductScreenErrorState());
      }
    }
  }
}
