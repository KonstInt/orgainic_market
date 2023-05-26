import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/organic_market_repository.dart';


part 'subcategory_event.dart';
part 'subcategory_state.dart';

class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  OrganicMarketRepository repository;
  SubcategoryBloc({required this.repository}) : super(SubcategoryInitial()) {
    on<SubcategoryLoadEvent>(_onSubcategoryLoad);
  }

  FutureOr<void> _onSubcategoryLoad(SubcategoryLoadEvent event, Emitter<SubcategoryState> emit) async {
    emit(SubcategoryLoadingState());
    try{
      List<String> subcategories = await repository.getSubcategories();
      emit(SubcategoryLoadedState(subcategories: subcategories));
    }
    catch(e){
       if (e == SocketException) {
        emit(SubcategoryInternetErrorState());
      } else {
        emit(SubcategoryErrorState());
      }
    }
  }
}
