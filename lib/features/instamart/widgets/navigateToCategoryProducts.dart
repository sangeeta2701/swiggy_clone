
import 'package:flutter/material.dart';
import 'package:swiggy_clone/features/instamart/screens/InstamartCategoryProductsScreen.dart';
import 'package:swiggy_clone/features/instamart/screens/beauty_category_products_screen.dart';
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
  if (section.contains('grocery') || 
      item.contains('atta') || 
      item.contains('rice') || 
      item.contains('dal') || 
      item.contains('masala') || 
      item.contains('oil')) {
    targetScreen = GroceryCategoryProductsScreen(
      categoryName: itemName,
      selectedSubCategory: itemName,
    );
  } 
  // 2. Cold Drinks & Juices Dedicated Router
  else if (item.contains('cold drinks') || item.contains('juices')) {
    targetScreen = ColdDrinksJuicesScreen(
      categoryName: itemName,
      selectedSubCategory: 'Soft Drinks',
    );
  } 
  // 3. Snacks & Drinks Router
  else if (section.contains('snack') || 
           item.contains('chips') || 
           item.contains('chocolate') || 
           item.contains('biscuit') || 
           item.contains('tea') || 
           item.contains('sweet')) {
    targetScreen = SnacksCategoryProductsScreen(
      categoryName: sectionTitle,
      selectedSubCategory: itemName,
    );
  } 
  // 4. Beauty & Wellness Router
  else if (section.contains('beauty') || 
           item.contains('bath') || 
           item.contains('body') || 
           item.contains('hair') || 
           item.contains('skin') || 
           item.contains('makeup')) {
    targetScreen = BeautyCategoryProductsScreen(
      categoryName: itemName,
      selectedSubCategory: itemName,
    );
  } 
  // 5. Fresh Items Router (Vegetables, Fruits, Dairy, Meat)
  else {
    targetScreen = InstamartCategoryProductsScreen(
      categoryName: itemName,
      selectedSubCategory: itemName,
    );
  }

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}