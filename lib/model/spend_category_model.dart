class SpendingCategoryModel {
  String? finleyCategory;
  String? finleyCategoryName;
  double? categorySpend;
  String? spendStatus;
  double? spendPercentage;
  double? spendRemaining;

  SpendingCategoryModel({
    this.finleyCategory,
    this.finleyCategoryName,
    this.categorySpend,
    this.spendStatus,
    this.spendPercentage,
    this.spendRemaining,
  });

  SpendingCategoryModel.fromJson(Map<String, dynamic> json) {
    finleyCategory = json['finleyCategory'];
    finleyCategoryName = json['finleyCategoryName'];
    categorySpend = json['categorySpend'];
    spendStatus = json['spendStatus'];
    spendPercentage = json['spendPercentage'];
    spendRemaining = json['spendRemaining'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['finleyCategory'] = finleyCategory;
    data['finleyCategoryName'] = finleyCategoryName;
    data['categorySpend'] = categorySpend;
    data['spendStatus'] = spendStatus;
    data['spendPercentage'] = spendPercentage;
    data['spendRemaining'] = spendRemaining;
    return data;
  }
}
