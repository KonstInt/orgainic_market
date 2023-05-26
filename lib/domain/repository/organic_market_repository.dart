import '../models/cart_model.dart';
import '../models/product_model.dart';
import '../models/short_product_model.dart';

abstract class OrganicMarketRepository{
  Future<ProductModel> getProduct(int productId);
  Future<List<ShortProductModel>> getProductList(int productListId, String category);
  Future<List<String>> getSubcategories();
  Future<CartModel> getCart(int userId);
  Future<List<CartProducts>> getCartProducts(CartModel cartModel);
}