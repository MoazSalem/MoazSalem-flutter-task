class Ad {
  final int id;
  final String title;
  final double originalPrice;
  final double discountedPrice;
  final String imageUrl;
  final double soldCount;

  Ad({
    required this.id,
    required this.title,
    required this.originalPrice,
    required this.discountedPrice,
    required this.imageUrl,
    required this.soldCount,
  });
}
