import '../../domain/models/product_model.dart';
import '../api/models/api_product_model.dart';

class ProductMapper{
    static ProductModel fromApi(ApiProductModel product){
      return ProductModel(
        productId: product.productId, 
        title: product.title, 
        price: product.price, 
        description: product.description, 
        baseMeasure: product.baseMeasure,
        image: product.image, 
        isExpress: product.isExpress, 
        isOrganic: product.isOrganic,
        isSale: product.isSale, 
        measureType: product.measureType, 
        step: product.step, 
        timeDelivered: product.timeDelivered,
        bigMeasure: product.bigMeasure,
        saleMeasure: product.saleMeasure,
        saleSize: product.saleSize
      );
    }
}