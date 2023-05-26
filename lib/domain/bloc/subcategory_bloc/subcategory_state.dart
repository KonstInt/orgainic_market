part of 'subcategory_bloc.dart';

@immutable
abstract class SubcategoryState {}

class SubcategoryInitial extends SubcategoryState {}
class SubcategoryLoadingState extends SubcategoryState {}
class SubcategoryLoadedState extends SubcategoryState {
  final List<String> subcategories;
  SubcategoryLoadedState({required this.subcategories});
}
class SubcategoryErrorState extends SubcategoryState{}
class SubcategoryInternetErrorState extends SubcategoryState{}
