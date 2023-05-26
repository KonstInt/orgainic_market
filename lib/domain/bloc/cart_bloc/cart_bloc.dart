import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/organic_market_repository.dart';
import '../../models/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  OrganicMarketRepository repository;
  List<CartProducts> cartItemsList = [];
  CartModel? cartModel;
  CartBloc({required this.repository}) : super(CartInitial()) {
    on<CartLoadEvent>(_onCartLoad);
    on<CartDeleteItemEvent>(_onCartDeleteItem);
    on<CartCreateEvent>(_onCartCreate);
    on<AddToCartEvent>(_onAddToCart);
  }

  FutureOr<void> _onCartLoad(
      CartLoadEvent event, Emitter<CartState> emit) async {
    emit(CartLoadingState());
    try {
      cartModel = await repository.getCart(1);
      cartItemsList = await repository.getCartProducts(cartModel!);
      emit(CartLoadedState(products: cartItemsList));
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }

  FutureOr<void> _onCartDeleteItem(
      CartDeleteItemEvent event, Emitter<CartState> emit) {
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
      cartModel?.productList.add(CartItem(productId: 1, quantity:1));
      emit(CartLoadedState(products: cartItemsList));
    } catch (e) {
      if (e == SocketException) {
        emit(CartInternetErrorState());
      } else {
        emit(CartErrorState());
      }
    }
  }
}
