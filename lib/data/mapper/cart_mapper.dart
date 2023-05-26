import '../api/models/api_cart_model.dart';
import 'product_mapper.dart';
import '../../domain/models/cart_model.dart';

class CartMapper{
  static CartModel fromApi(ApiCartModel cart){
    return CartModel(id: cart.id, userId: cart.userId, date: cart.date, productList: CartProductListMapper.fromApi(cart.productList));
  }
}

class CartProductListMapper{
  static List<CartItem> fromApi(List<ApiCartItem> items){
    List<CartItem> result = [];
    for(ApiCartItem item in items){
        result.add(CartItem(productId: item.productId, quantity: item.quantity));
    }
    return result;
  }
}

class CartProductsMapper{
  static  CartProducts fromApi(ApiCartProducts cartProduct){
    return CartProducts(quantity: cartProduct.quantity, product: ProductMapper.fromApi(cartProduct.product));
  }
}