import 'package:flutter_riverpod/legacy.dart';

// Tab provider for Instamart Sub-Categories (All, Fresh, Electronics, etc.)
final instamartSubTabProvider = StateProvider<int>((ref) => 0);

// Tab provider for Instamart Bottom Nav (Instamart, Categories, Reorder, Print)
final instamartBottomNavIndexProvider = StateProvider<int>((ref) => 0);