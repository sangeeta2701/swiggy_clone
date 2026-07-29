
import 'package:flutter_riverpod/legacy.dart';

// Bottom Navigation Index State
final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

// Selected Top Category (Food, Instamart, Dineout, etc.)
final selectedCategoryIndexProvider = StateProvider<int>((ref) => 0);

// Veg Switch State
final isVegOnlyProvider = StateProvider<bool>((ref) => false);


// Top Restaurant Pill Toggle State (0: REORDER / TOP RATED, 1: FOOD IN 15 MINS)
final topPillTabProvider = StateProvider<int>((ref) => 0);

// Special Dietary Tab Toggle State (0: JAIN FOOD, 1: VEGAN FOOD)
final dietaryTabProvider = StateProvider<int>((ref) => 0);