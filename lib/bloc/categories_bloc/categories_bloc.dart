import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesLoadEvent>(_onCategoriesLoad);
  }

  FutureOr<void> _onCategoriesLoad(CategoriesLoadEvent event, Emitter<CategoriesState> emit) {
    emit(CategoriesLoadingState());
    try{

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
