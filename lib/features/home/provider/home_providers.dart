
import 'package:flutter_riverpod/legacy.dart';

// Bottom Navigation Index State
final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

// Selected Top Category (Food, Instamart, Dineout, etc.)
final selectedCategoryIndexProvider = StateProvider<int>((ref) => 0);

// Veg Switch State
final isVegOnlyProvider = StateProvider<bool>((ref) => false);