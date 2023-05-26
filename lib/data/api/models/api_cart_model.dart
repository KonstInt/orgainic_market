import 'api_product_model.dart';

class ApiCartModel {
  final int id;
  final int userId;
  final String date;
  late List<ApiCartItem> productList;
  ApiCartModel.fromApi(Map<String, dynamic> map)
      : date = map['date'],
        id = map['id'],
        userId = map['userId'] {
    productList = [];
    for (Map<String, dynamic> item in map['products']) {
      productList.add(
        ApiCartItem.fromApi(item),
      );
    }
  }
}

class ApiCartItem {
  final int productId;
  final int quantity;
  ApiCartItem.fromApi(Map<String, dynamic> map):
  productId = map['productId'],
  quantity = map['quantity'];
}

class ApiCartProducts {
  int quantity;
  final ApiProductModel product;
  ApiCartProducts({required this.quantity, required this.product});
}
