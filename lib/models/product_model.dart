class ProductModel{
  final int productId;
  final String title;
  final String description;
  final String image;
  final double price;
  final String measureType;
  final double step;
  final double baseMeasure;
  final double? bigMeasure;
  final double? saleMeasure;
  final bool isSale;
  final int? saleSize; 
  final bool isOrganic;
  final bool isExpress;
  final DateTime timeDelivered;
  ProductModel({
    required this.title, 
    required this.description, 
    required this.price,
    required this.image, 
    required this.measureType,
    required this.step,
    required this.baseMeasure,
    this.bigMeasure,
    this.saleMeasure,
    required this.productId,
    required this.isSale,
    this.saleSize,
    required this.isExpress,
    required this.isOrganic,
    required this.timeDelivered});
}