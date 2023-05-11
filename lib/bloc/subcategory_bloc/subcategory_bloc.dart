import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/repos/dio/app_dio_api.dart';

part 'subcategory_event.dart';
part 'subcategory_state.dart';

class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  SubcategoryBloc() : super(SubcategoryInitial()) {
    on<SubcategoryLoadEvent>(_onSubcategoryLoad);
  }

  FutureOr<void> _onSubcategoryLoad(SubcategoryLoadEvent event, Emitter<SubcategoryState> emit) async {
    emit(SubcategoryLoadingState());
    try{
      List<String> subcategories = await AppDioApi().getSubcategories();
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
