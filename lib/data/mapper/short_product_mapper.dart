import '../api/models/api_short_product_model.dart';
import '../../domain/models/short_product_model.dart';

class ShortProductMapper{
  static ShortProductModel fromApi(ApiShortProductModel product){
    return ShortProductModel(
      productId: product.productId,
      title: product.title,
      image: product.image,
      baseMeasure: product.baseMeasure,
      measureType: product.measureType,
      price: product.price
      );
  }
}