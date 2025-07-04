import 'package:get/get.dart';

import '../model/spend_category_model.dart';

const List<Map<String, dynamic>> mockdata = [
  {
    "finleyCategory": "HOUSING_AND_UTILITIES",
    "finleyCategoryName": "Housing",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.5,
  },
  {
    "finleyCategory": "EDUCATION_AND_CHILDCARE",
    "finleyCategoryName": "Education",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
  {
    "finleyCategory": "TRANSPORTATION",
    "finleyCategoryName": "Transport",
    "categorySpend": 11.73,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 15.79,
    "spendRemaining": 62.56,
  },
  {
    "finleyCategory": "HEALTHCARE_AND_MEDICAL",
    "finleyCategoryName": "Healthcare",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
  {
    "finleyCategory": "INSURANCE",
    "finleyCategoryName": "Insurance",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
  {
    "finleyCategory": "LOANS_AND_CREDIT_CARDS",
    "finleyCategoryName": "Loans",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
  {
    "finleyCategory": "GROCERIES",
    "finleyCategoryName": "Groceries",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
  {
    "finleyCategory": "ENTERTAINMENT",
    "finleyCategoryName": "Entertain",
    "categorySpend": 78.5,
    "spendStatus": "OVER_SPENT",
    "spendPercentage": 402.56,
    "spendRemaining": -59.0,
  },
  {
    "finleyCategory": "DINING_OUT",
    "finleyCategoryName": "Dining Out",
    "categorySpend": 16.33,
    "spendStatus": "OVER_THRESHOLD_SPENT",
    "spendPercentage": 83.74,
    "spendRemaining": 3.17,
  },
  {
    "finleyCategory": "SHOPPING",
    "finleyCategoryName": "Shopping",
    "categorySpend": 1089.4,
    "spendStatus": "OVER_SPENT",
    "spendPercentage": 5586.67,
    "spendRemaining": -1069.9,
  },
  {
    "finleyCategory": "MISCELLANEOUS",
    "finleyCategoryName": "Misc",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 29250.0,
  },
  {
    "finleyCategory": "TRAVEL",
    "finleyCategoryName": "Travel",
    "categorySpend": 0.0,
    "spendStatus": "UNDER_SPENT",
    "spendPercentage": 0.0,
    "spendRemaining": 0.0,
  },
];

class SpendingController extends GetxController {
  RxList<SpendingCategoryModel> spendingData = <SpendingCategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchSpendingData();
  }

  void fetchSpendingData() {
    spendingData.value =
        mockdata.map((item) => SpendingCategoryModel.fromJson(item)).toList();
  }
}
