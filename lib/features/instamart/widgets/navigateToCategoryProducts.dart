import 'package:flutter/material.dart';
import 'package:swiggy_clone/features/instamart/screens/InstamartCategoryProductsScreen.dart';
import 'package:swiggy_clone/features/instamart/screens/cold_drinks_juices_screen.dart';
import 'package:swiggy_clone/features/instamart/screens/grocery_category_products_screen.dart';
import 'package:swiggy_clone/features/instamart/screens/snacks_category_products_screen.dart';

void navigateToCategoryProducts(
  BuildContext context,
  String sectionTitle,
  String itemName,
) {
  final section = sectionTitle.trim().toLowerCase();
  final item = itemName.trim().toLowerCase();

  Widget targetScreen;

  if (section.contains('grocery') || item.contains('atta') || item.contains('rice') || item.contains('dal')) {
    targetScreen = GroceryCategoryProductsScreen(
      categoryName: 'Grocery & Kitchen',
      selectedSubCategory: itemName,
    );
  } else if (item.contains('cold drinks') || item.contains('juice')) {
    targetScreen = ColdDrinksJuicesScreen(
      categoryName: itemName,
      selectedSubCategory: 'Soft Drinks',
    );
  } else if (section.contains('snack') || item.contains('chips') || item.contains('chocolate') || item.contains('biscuit')) {
    targetScreen = SnacksCategoryProductsScreen(
      categoryName: sectionTitle,
      selectedSubCategory: itemName,
    );
  } else {
    targetScreen = InstamartCategoryProductsScreen(
      categoryName: sectionTitle,
      selectedSubCategory: itemName,
    );
  }

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}