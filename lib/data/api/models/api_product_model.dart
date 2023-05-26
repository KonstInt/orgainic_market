import 'dart:math';

class ApiProductModel{
  Random random = Random();
  final int productId;
  final String title;
  final String description;
  final String image;
  final double price;
  final String measureType;
  late double step;
  final double baseMeasure;
  late double? bigMeasure;
  late double? saleMeasure;
  late bool isSale;
  late int? saleSize; 
  final bool isOrganic;
  final bool isExpress;
  late DateTime timeDelivered;
 
  ApiProductModel.fromApi(Map<String, dynamic> map):
        title = map['title'],
        description = map['description'],
        price = map['price'].toDouble(),
        image = map['image'],
        productId = map['id'],
        measureType = 'gr',
        isExpress = true,
        isOrganic = true,
        baseMeasure = 1
        {
        Random random = Random();
        bool sale = random.nextBool();
        step = random.nextDouble() * 10;
        bigMeasure = random.nextDouble() * 20;
        isSale = sale;
        saleMeasure = sale ? random.nextDouble() * 5 : 0;
        saleSize = sale ? random.nextInt(25) : 0;
        timeDelivered = DateTime.now();
        }

}