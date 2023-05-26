import 'service/organic_service.dart';
import '../mapper/cart_mapper.dart';
import '../mapper/product_mapper.dart';
import '../mapper/short_product_mapper.dart';

import '../../domain/models/cart_model.dart';
import '../../domain/models/product_model.dart';
import '../../domain/models/short_product_model.dart';

class ApiUtil {
  final OrganicMarketService _organicMarketService;
  ApiUtil(this._organicMarketService);
  Future<ProductModel> getProduct(int productId) async {
    final result = await _organicMarketService.getProduct(productId);
    return ProductMapper.fromApi(result);
  }

  Future<List<ShortProductModel>> getProductList(
      int productListId, String category) async {
    final preres = await _organicMarketService.getProductList(productListId, category);
    final List<ShortProductModel> result = [];
    for(var element in preres){
      result.add(ShortProductMapper.fromApi(element));
    }
    return result;
  }

  /*Future<List<CategoryModel>> getCategies() async {
    //final response = await dio.get("/categories");
    return null;
  }*/
  Future<List<String>> getSubcategories() async {
    final result = await _organicMarketService.getSubcategories();
    return result;
  }

  Future<CartModel> getCart(int userId) async {
    final result = await _organicMarketService.getCart(userId);
    return CartMapper.fromApi(result);
  }

  Future<List<CartProducts>> getCartProducts(CartModel cartModel) async {
    final preres = await _organicMarketService.getCartProducts(cartModel);
    final List<CartProducts> result = [];
    for(var element in preres){
      result.add(CartProductsMapper.fromApi(element));
    }
    return result;
  }

}
