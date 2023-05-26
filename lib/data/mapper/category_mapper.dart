import '../api/models/api_category_model.dart';
import '../../domain/models/category_model.dart';

class CategoryMapper{
  static CategoryModel fromApi(ApiCategoryModel apiCategoryModel){
    return CategoryModel(
      title: apiCategoryModel.title,
      image: apiCategoryModel.image,
      svgFigure: apiCategoryModel.svgFigure
      );
  }
}