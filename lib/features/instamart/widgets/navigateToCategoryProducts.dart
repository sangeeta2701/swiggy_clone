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

  // 1. Grocery & Kitchen Router
  if (section.contains('grocery')) {
    targetScreen = GroceryCategoryProductsScreen(
      categoryName: itemName,         // Sets title to "Masalas & Spices", "Oils & Ghee", "Cereals & Breakfast"
      selectedSubCategory: itemName, // Passes clicked item
    );
  } 
  // 2. Cold Drinks & Juices Router
  else if (item.contains('cold drinks') || item.contains('juice')) {
    targetScreen = ColdDrinksJuicesScreen(
      categoryName: itemName,
      selectedSubCategory: 'Soft Drinks',
    );
  } 
  // 3. Snacks & Drinks Router
  else if (section.contains('snack')) {
    targetScreen = SnacksCategoryProductsScreen(
      categoryName: sectionTitle,
      selectedSubCategory: itemName,
    );
  } 
  // 4. Fresh Items Router
  else {
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