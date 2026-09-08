import 'package:flutter/material.dart';
import 'package:swiggy_clone/features/instamart/print%20store/screen/InstaprintsScreen.dart';
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

  // 0. Print Store Dedicated Router
  if (item.contains('print') || section.contains('print')) {
    targetScreen = const InstaprintsScreen();
  }
  // 1. Grocery & Kitchen Router
  else if (section.contains('grocery') || 
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
  // 2. Cold Drinks & Juices Router
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
           item.contains('sweet') ||
           item.contains('ice cream')) {
    targetScreen = SnacksCategoryProductsScreen(
      categoryName: itemName,
      selectedSubCategory: itemName,
    );
  } 
  // 4. Beauty & Wellness Router
  else if (section.contains('beauty') || 
           item.contains('bath') || 
           item.contains('body') || 
           item.contains('hair') || 
           item.contains('shampoo') || 
           item.contains('skin') || 
           item.contains('makeup') || 
           item.contains('feminine') || 
           item.contains('hygiene') || 
           item.contains('health') || 
           item.contains('pharma') || 
           item.contains('baby')) {
    targetScreen = BeautyCategoryProductsScreen(
      categoryName: itemName,
      selectedSubCategory: itemName,
    );
  } 
  // 5. Fresh Items Router
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