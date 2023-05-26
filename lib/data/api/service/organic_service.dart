import 'package:dio/dio.dart';
import '../../../domain/models/cart_model.dart';
import '../../../utils/constants.dart';

import '../models/api_cart_model.dart';
import '../models/api_product_model.dart';
import '../models/api_short_product_model.dart';

class OrganicMarketService {
  late final Dio dio;
  OrganicMarketService() {
    final options = BaseOptions(
      baseUrl: MyConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 15000),
    );
    dio = Dio(options);
  }
  Future<ApiProductModel> getProduct(int productId) async {
    final response = await dio.get("/products/$productId");
    final data = response.data as Map<String, dynamic>;
    return ApiProductModel.fromApi(data);
  }

  Future<List<ApiShortProductModel>> getProductList(
      int productListId, String category) async {
    final response = await dio.get("/products$category");
    final data = response.data;
    List<ApiShortProductModel> productList = [];
    for (Map<String, dynamic> dataProduct in data) {
      productList.add(ApiShortProductModel.fromApi(dataProduct));
    }
    return productList;
  }


  //TODO: Get Category API
  /*Future<List<CategoryModel>> getCategies() async {
    //final response = await dio.get("/categories");
    return null;
  }*/
  Future<List<String>> getSubcategories() async {
    final response = await dio.get("/products/categories");
    List<String> categoriesList = [];
    for (String category in response.data) {
      categoriesList.add(category);
    }
    return categoriesList;
  }

  Future<ApiCartModel> getCart(int userId) async {
    final response = await dio.get("/carts/user/$userId");
    final data = response.data[0];
    ApiCartModel cartItemModel = ApiCartModel.fromApi(data);
    return cartItemModel;
  }

  Future<List<ApiCartProducts>> getCartProducts(CartModel cartModel) async {
    List<ApiCartProducts> cartProductsList = [];
    for(CartItem prototypeProduct in cartModel.productList){
        ApiProductModel product = await getProduct(prototypeProduct.productId);
        cartProductsList.add(ApiCartProducts(quantity: prototypeProduct.quantity, product: product));
    }
    return cartProductsList;
  }

}
