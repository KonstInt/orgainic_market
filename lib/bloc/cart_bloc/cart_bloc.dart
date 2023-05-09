import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/models/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  List<ProductModel> cartItemsList = [];
  CartBloc() : super(CartInitial()) {
    on<CartLoadEvent>(_onCartLoad);
    on<CartDeleteItemEvent>(_onCartDeleteItem);
    on<CartCreateEvent>(_onCartCreate);
    on<AddToCartEvent>(_onAddToCart);
  }

  FutureOr<void> _onCartLoad(CartLoadEvent event, Emitter<CartState> emit) {
    emit(CartLoadingState());
    try {
      //TODO:
      
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }

  FutureOr<void> _onCartDeleteItem(CartDeleteItemEvent event, Emitter<CartState> emit) {
    emit(CartLoadingState());
    try {
      //TODO:
      
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }

  FutureOr<void> _onCartCreate(CartCreateEvent event, Emitter<CartState> emit) {
    emit(CartLoadingState());
    try {
      //TODO:
      
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }

  FutureOr<void> _onAddToCart(AddToCartEvent event, Emitter<CartState> emit) {
    emit(CartLoadingState());
    try {
      //TODO:
      
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }
}
