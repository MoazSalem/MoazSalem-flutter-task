class SubscriptionPlan {
  final String description;
  final double price;
  final List<int> perks;
  final int? viewsMultiplier;
  final bool bestValue;
  final bool highestViews;

  SubscriptionPlan({
    required this.description,
    required this.price,
    required this.perks,
    this.viewsMultiplier,
    required this.bestValue,
    required this.highestViews,
  });
}
