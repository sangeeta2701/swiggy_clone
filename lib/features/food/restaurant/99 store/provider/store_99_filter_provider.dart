import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

enum PriceFilterRange { none, under99, range100To149 }
enum VegPreference { none, veg, nonVeg }
enum MaxDeliveryTime { none, min20, min30, min45 }

class Store99FilterState {
  final PriceFilterRange priceRange;
  final VegPreference vegPref;
  final MaxDeliveryTime maxTime;
  final String selectedCategory; // 'All', 'Idli', 'Dosa', etc.

  const Store99FilterState({
    this.priceRange = PriceFilterRange.none,
    this.vegPref = VegPreference.none,
    this.maxTime = MaxDeliveryTime.none,
    this.selectedCategory = 'All',
  });

  bool get hasAnyFilter =>
      priceRange != PriceFilterRange.none ||
      vegPref != VegPreference.none ||
      maxTime != MaxDeliveryTime.none ||
      selectedCategory != 'All';

  Store99FilterState copyWith({
    PriceFilterRange? priceRange,
    VegPreference? vegPref,
    MaxDeliveryTime? maxTime,
    String? selectedCategory,
  }) {
    return Store99FilterState(
      priceRange: priceRange ?? this.priceRange,
      vegPref: vegPref ?? this.vegPref,
      maxTime: maxTime ?? this.maxTime,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}

class Store99FilterNotifier extends StateNotifier<Store99FilterState> {
  Store99FilterNotifier() : super(const Store99FilterState());

  void toggleUnder99() {
    if (state.priceRange == PriceFilterRange.under99) {
      state = state.copyWith(priceRange: PriceFilterRange.none);
    } else {
      state = state.copyWith(priceRange: PriceFilterRange.under99);
    }
  }

  void toggleRange100To149() {
    if (state.priceRange == PriceFilterRange.range100To149) {
      state = state.copyWith(priceRange: PriceFilterRange.none);
    } else {
      state = state.copyWith(priceRange: PriceFilterRange.range100To149);
    }
  }

  void setVegPref(VegPreference pref) {
    state = state.copyWith(vegPref: pref);
  }

  void setDeliveryTime(MaxDeliveryTime time) {
    state = state.copyWith(maxTime: time);
  }

  void setSelectedCategory(String category) {
    state = state.copyWith(selectedCategory: category);
  }

  void clearAllFilters() {
    state = const Store99FilterState();
  }
}

final store99FilterProvider =
    StateNotifierProvider<Store99FilterNotifier, Store99FilterState>((ref) {
  return Store99FilterNotifier();
});