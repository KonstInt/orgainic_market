class ProductModel{
  final String productId;
  final String title;
  final String body;
  final String image;
  final String measure;
  final double step;
  final double baseMeasure;
  final double? bigMeasure;
  final double? saleMeasure;
  bool isSale;
  final int? saleSize; 
  final bool isOrganic;
  final bool isExpress;
  final DateTime timeDelivered;
  ProductModel({
    required this.title, 
    required this.body, 
    required this.image, 
    required this.measure,
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