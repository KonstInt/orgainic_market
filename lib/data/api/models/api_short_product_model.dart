class ApiShortProductModel{
  final int productId;
  final String title;
  final String image;
  final double baseMeasure;
  final String measureType;
  final double price;
  
  ApiShortProductModel.fromApi(Map<String, dynamic> map):
  productId = map["id"],
  title = map["title"],
  image = map["image"],
  price = map["price"].toDouble(),
  baseMeasure = 1,
  measureType = 'кг';
}