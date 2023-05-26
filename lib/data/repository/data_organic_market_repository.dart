import '../api/api_util.dart';
import '../../domain/models/short_product_model.dart';
import '../../domain/models/product_model.dart';
import '../../domain/models/cart_model.dart';
import '../../domain/repository/organic_market_repository.dart';

class DataOrganicMarketRepository extends OrganicMarketRepository{
  final ApiUtil _apiUtil;
  DataOrganicMarketRepository(this._apiUtil);
  @override
  Future<CartModel> getCart(int userId) {
    return _apiUtil.getCart(userId);
  }

  @override
  Future<List<CartProducts>> getCartProducts(CartModel cartModel) {
    return _apiUtil.getCartProducts(cartModel);
  }

  @override
  Future<ProductModel> getProduct(int productId) {
    return _apiUtil.getProduct(productId);
  }

  @override
  Future<List<ShortProductModel>> getProductList(int productListId, String category) {
    return _apiUtil.getProductList(productListId, category);
  }

  @override
  Future<List<String>> getSubcategories() {
   return _apiUtil.getSubcategories();
  }

}