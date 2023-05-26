part of 'categories_bloc.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoadingState extends CategoriesState {}
class CategoriesLoadedState extends CategoriesState {
  final List<String> categories;
  CategoriesLoadedState({required this.categories});
}
class CategoriesInternetErrorState extends CategoriesState {}
class CategoriesErrorState extends CategoriesState {}