import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:organic_market/bloc/categories_bloc/categories_bloc.dart';
import 'package:organic_market/models/cart_model.dart';
import 'package:organic_market/models/category_model.dart';
import 'package:organic_market/models/product_model.dart';
import 'package:organic_market/models/short_product_model.dart';
import 'package:organic_market/utils/constants.dart';

class AppDioApi {
  late final Dio dio;
  AppDioApi() {
    final options = BaseOptions(
      baseUrl: MyConstants.baseUrl,
      connectTimeout: Duration(milliseconds: 15000),
    );
    dio = Dio(options);
  }
  Future<ProductModel> getProduct(int productId) async {
    Random random = Random();
    bool sale = random.nextBool();
    final response = await dio.get("/products/$productId");
    final data = response.data as Map<String, dynamic>;
    ProductModel productModel = ProductModel(
        title: data['title'],
        description: data['description'],
        price: data['price'].toDouble(),
        image: data['image'],
        measureType: 'gr',
        step: random.nextDouble() * 10,
        baseMeasure: 1,
        bigMeasure: random.nextDouble() * 20,
        productId: productId,
        isSale: sale,
        saleMeasure: sale ? random.nextDouble() * 5 : 0,
        saleSize: sale ? random.nextInt(25) : 0,
        isExpress: true,
        isOrganic: true,
        timeDelivered: DateTime.now());
    return productModel;
  }

  Future<List<ShortProductModel>> getProductList(
      int productListId, String category) async {
    final response = await dio.get("/products$category");
    final data = response.data;
    List<ShortProductModel> productList = [];
    for (Map<String, dynamic> dataProduct in data) {
      productList.add(ShortProductModel(
        productId: dataProduct['id'],
        title: dataProduct['title'],
        image: dataProduct['image'],
        baseMeasure: 1,
        measureType: 'кг',
        price: dataProduct['price'].toDouble(),
      ));
    }
    return productList;
  }

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

  Future<CartModel> getCart(int userId) async {
    final response = await dio.get("/carts/user/$userId");
    final data = response.data[0];

    List<CartItem> cartItemsList = [];
    for (Map<String, dynamic> item in data['products']) {
      cartItemsList.add(
        CartItem(
          productId: item['productId'],
          quantity: item['quantity'],
        ),
      );
    }
    CartModel cartItemModel = CartModel(
      id: data['id'],
      userId: data['userId'],
      date: data['date'],
      productList: cartItemsList,
    );
    return cartItemModel;
  }

  Future<List<CartProducts>> getCartProducts(CartModel cartModel) async {
    List<CartProducts> cartProductsList = [];
    for(CartItem prototypeProduct in cartModel.productList){
        ProductModel product = await getProduct(prototypeProduct.productId);
        cartProductsList.add(CartProducts(quantity: prototypeProduct.quantity, product: product));
    }
    return cartProductsList;
  }

}
