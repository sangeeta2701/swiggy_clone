import 'package:flutter_riverpod/legacy.dart';

/// Tracks the selected category title (e.g. 'Pizzas', 'Biryani').
/// If null, no category is selected.
final selectedCategoryProvider = StateProvider<String?>((ref) => null);