class CartModel{
  final int id;
  final int userId;
  final String date;
  final List<CartItem> productList;
  CartModel({required this.id, required this.userId, required this.date, required this.productList});

}

class CartItem{
  int productId;
  int quantity;
  CartItem({required this.productId, required this.quantity});
}