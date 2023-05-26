import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesLoadEvent>(_onCategoriesLoad);
  }

  FutureOr<void> _onCategoriesLoad(CategoriesLoadEvent event, Emitter<CategoriesState> emit) {
    emit(CategoriesLoadingState());
    try{
        //TODO: category
    }
    catch(e){
       if (e == SocketException) {
        emit(CategoriesInternetErrorState());
      } else {
        emit(CategoriesErrorState());
      }
    }
  }
}
