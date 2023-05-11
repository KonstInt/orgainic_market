import 'package:organic_market/models/product_model.dart';

class CartModel {
  final int id;
  final int userId;
  final String date;
  List<CartItem> productList;
  CartModel(
      {required this.id,
      required this.userId,
      required this.date,
      required this.productList});
}


class CartItem {
  final int productId;
  final int quantity;
  CartItem({required this.productId, required this.quantity});
}

class CartProducts{
  int quantity;
  final ProductModel product;
  CartProducts({required this.quantity, required this.product});
}