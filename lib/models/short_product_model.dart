class ShortProductModel{
  final int productId;
  final String title;
  final String image;
  final String baseMeasure;
  final String measure;
  final double price;
  ShortProductModel({
    required this.productId, 
    required this.title, 
    required this.image, 
    required this.baseMeasure,
    required this.measure, 
    required this.price});
}