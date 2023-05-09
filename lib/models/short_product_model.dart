class ShortProductModel{
  final int productId;
  final String title;
  final String image;
  final double baseMeasure;
  final String measureType;
  final double price;
  ShortProductModel({
    required this.productId, 
    required this.title, 
    required this.image, 
    required this.baseMeasure,
    required this.measureType, 
    required this.price});
}