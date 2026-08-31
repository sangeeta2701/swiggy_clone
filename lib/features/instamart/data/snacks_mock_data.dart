import '../models/product_model.dart';

class SnacksMockData {
  // Map parent category titles to their respective sidebar subcategories
  static const Map<String, List<CategoryModel>> categorySubCategories = {
    // --- 1. TEA, COFFEE AND MILK DRINKS ---
    'Tea, Coffee and Milk drinks': [
      CategoryModel(name: 'Tea', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Instant Coffee', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Filter & Ground Coffee', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Drink Mixes', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Green & Herbal Tea', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Cold Coffee', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],

    // --- 2. SAUCES AND SPREADS ---
    'Sauces and Spreads': [
      CategoryModel(name: 'Chocolate Spreads', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Tomato Ketchup', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Peanut Butters', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Jams', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Mayo & Spreads', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Dips & Dressing', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Cooking Sauces', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Asian Sauces', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      CategoryModel(name: 'Honey and Cider', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],

    // --- 3. SWEET CORNER ---
    'Sweet Corner': [
      CategoryModel(name: 'Kaju Katli & Barfi', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      CategoryModel(name: 'Cakes and Pies', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      CategoryModel(name: 'Gulab Jamun', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      CategoryModel(name: 'Cream Biscuits', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      CategoryModel(name: 'Mysore Pak', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],

    // --- 4. CHIPS AND NAMKEENS ---
    'Chips and Namkeens': [
      CategoryModel(name: 'Potato Chips', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      CategoryModel(name: 'Namkeen & Bhujia', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      CategoryModel(name: 'Nachos & Popcorn', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      CategoryModel(name: 'Roasted Snacks', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
    ],

    // --- 5. CHOCOLATES ---
    'Chocolates': [
      CategoryModel(name: 'Chocolate Bars', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      CategoryModel(name: 'Gifting Boxes', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      CategoryModel(name: 'Wafers & Bites', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
    ],

    // --- 6. BISCUITS AND CAKES ---
    'Biscuits and Cakes': [
      CategoryModel(name: 'Cookies', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      CategoryModel(name: 'Cream Biscuits', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      CategoryModel(name: 'Rusks & Toast', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      CategoryModel(name: 'Cakes & Rolls', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
    ],

    // --- 7. ICE CREAMS AND FROZEN... ---
    'Ice Creams and Frozen...': [
      CategoryModel(name: 'Ice Cream Tubs', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      CategoryModel(name: 'Cones & Sticks', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      CategoryModel(name: 'Kulfi & Candies', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
    ],
  };

  // Catalog products mapped by subcategory
  static const Map<String, List<ProductModel>> catalogProducts = {
    // -------------------------------------------------------------------------
    // 1. TEA, COFFEE AND MILK DRINKS SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Tea': [
      ProductModel(id: 't_1', name: 'Wagh Bakri Shudh Kahwa Green Tea Bags', weight: '25 Pieces', eta: '8 MINS', price: 188, originalPrice: 300, discount: '37% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 't_2', name: 'Organic India Tulsi Green Tea Classic', weight: '25 Pieces', eta: '8 MINS', price: 237, originalPrice: 250, discount: '5% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 't_3', name: 'Lipton Honey Lemon Green Tea Bags', weight: '25 Pieces', eta: '8 MINS', price: 180, originalPrice: 200, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 't_4', name: 'Tetley Ginger, Mint & Lemon Green Tea', weight: '25 Pieces', eta: '8 MINS', price: 172, originalPrice: 200, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Instant Coffee': [
      ProductModel(id: 'ic_1', name: 'Continental Speciale 100% Pure Instant Coffee Jar', weight: '100 g', eta: '8 MINS', price: 365, originalPrice: 445, discount: '17% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'ic_2', name: 'Continental Speciale 100% Pure Instant Coffee Pouch', weight: '50 g', eta: '8 MINS', price: 165, originalPrice: 175, discount: '5% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'ic_3', name: 'Nescafe Classic Instant Coffee Powder With Vibe Set', weight: '180 g', eta: '8 MINS', price: 784, originalPrice: 820, discount: '4% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'ic_4', name: 'Nescafe Classic Instant Coffee Powder With Mug', weight: '180 g', eta: '8 MINS', price: 784, originalPrice: 820, discount: '4% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Filter & Ground Coffee': [
      ProductModel(id: 'fg_1', name: 'Cothas Coffee Filter Coffee Powder', weight: '500 g', eta: '8 MINS', price: 240, originalPrice: 260, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'fg_2', name: 'MTR Daily Pure Filter Coffee', weight: '200 g', eta: '8 MINS', price: 110, originalPrice: 130, discount: '15% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'fg_3', name: 'Sleepy Owl Premium Filter Coffee Powder', weight: '250 g', eta: '8 MINS', price: 299, originalPrice: 350, discount: '15% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'fg_4', name: 'Bayars Coffee Premium Filter Blend', weight: '500 g', eta: '8 MINS', price: 220, originalPrice: 250, discount: '12% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Drink Mixes': [
      ProductModel(id: 'dm_1', name: 'Pediasure 7 Plus Specialized For Growing Children Chocolate', weight: '400 g', eta: '8 MINS', price: 559, originalPrice: 650, discount: '14% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'dm_2', name: 'Pediasure 7 Plus Specialized For Growing Children Vanilla', weight: '400 g', eta: '8 MINS', price: 559, originalPrice: 650, discount: '14% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'dm_3', name: 'Bournvita Chocolate Nutrition Drink Pouch', weight: '81 g', eta: '8 MINS', price: 30, originalPrice: 37, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'dm_4', name: 'Boost Drink Mix for Energy & Sports', weight: '500 g', eta: '8 MINS', price: 264, originalPrice: 264, discount: 'MRP', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Green & Herbal Tea': [
      ProductModel(id: 'gt_1', name: 'Organic India Tulsi Green Tea Lemon', weight: '25 Pieces', eta: '8 MINS', price: 235, originalPrice: 260, discount: '10% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'gt_2', name: 'Twinings Green Tea & Mint', weight: '25 Pieces', eta: '8 MINS', price: 315, originalPrice: 350, discount: '10% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'gt_3', name: 'Typhoo Green Tea Pure Natural', weight: '25 Pieces', eta: '8 MINS', price: 195, originalPrice: 220, discount: '11% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'gt_4', name: 'Girnar Food & Beverages Detox Green Tea', weight: '36 Pieces', eta: '8 MINS', price: 330, originalPrice: 360, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Cold Coffee': [
      ProductModel(id: 'cc_1', name: 'Sleepy Owl Cold Brew Coffee Can Smoothest Black', weight: '230 ml', eta: '8 MINS', price: 129, originalPrice: 170, discount: '24% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'cc_2', name: 'Nescafe Cold Coffee Can', weight: '180 ml', eta: '8 MINS', price: 60, originalPrice: 65, discount: '8% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'cc_3', name: 'Sunfeast Dark Fantasy Cold Coffee Bottle', weight: '200 ml', eta: '8 MINS', price: 75, originalPrice: 85, discount: '12% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'cc_4', name: 'Amul Kool Cold Coffee Can', weight: '200 ml', eta: '8 MINS', price: 35, originalPrice: 35, discount: 'MRP', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],

    // -------------------------------------------------------------------------
    // 2. SAUCES AND SPREADS SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Chocolate Spreads': [
      ProductModel(id: 'cs_1', name: 'Gladful Zero Palm Oil Hazelnut Almond Spread', weight: '300 g', eta: '8 MINS', price: 449, originalPrice: 499, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cs_2', name: 'Hershey\'s Cocoa With Almond Spread', weight: '150 g', eta: '8 MINS', price: 157, originalPrice: 175, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cs_3', name: 'Little Joys Chocolate Hazelnut Spread', weight: '300 g', eta: '8 MINS', price: 499, originalPrice: 550, discount: '9% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cs_4', name: 'Nutella Hazelnut Spread with Cocoa', weight: '350 g', eta: '8 MINS', price: 410, originalPrice: 450, discount: '9% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Tomato Ketchup': [
      ProductModel(id: 'tk_1', name: 'Surabhi Tomato Ketchup Pouch | No Onion No Garlic', weight: '900 g', eta: '8 MINS', price: 87, originalPrice: 130, discount: '33% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'tk_2', name: 'NO!CE Homestyle Tomato Jaggery Ketchup', weight: '330 g', eta: '8 MINS', price: 99, originalPrice: 125, discount: '20% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'tk_3', name: 'Del Monte Classic Blend Tomato Ketchup', weight: '415 g', eta: '8 MINS', price: 71, originalPrice: 89, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'tk_4', name: 'Maggi Pichkoo Rich Tomato Ketchup', weight: '75 g', eta: '8 MINS', price: 15, originalPrice: 15, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Peanut Butters': [
      ProductModel(id: 'pb_1', name: 'SNAAQZ Natural Creamy Peanut Butter', weight: '500 g', eta: '8 MINS', price: 250, originalPrice: 270, discount: '7% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'pb_2', name: 'MyFitness Chocolate Peanut Butter Smooth Spread', weight: '510 g', eta: '8 MINS', price: 271, originalPrice: 319, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'pb_3', name: 'Sundrop Regular Creamy Peanut Butter', weight: '300 g', eta: '8 MINS', price: 88, originalPrice: 99, discount: '11% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'pb_4', name: 'Pintola All Natural Peanut Butter Crunchy', weight: '350 g', eta: '8 MINS', price: 175, originalPrice: 199, discount: '12% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Jams': [
      ProductModel(id: 'jm_1', name: 'NO!CE Apple Pineapple Jam (80% Fruit & No Preservatives)', weight: '125 g', eta: '8 MINS', price: 99, originalPrice: 169, discount: '41% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'jm_2', name: 'Kissan Mixed Fruit Jam', weight: '90 g', eta: '8 MINS', price: 25, originalPrice: 25, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'jm_3', name: 'Urban Platter 100% Pure Gulkand', weight: '300 g', eta: '8 MINS', price: 167, originalPrice: 250, discount: '33% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'jm_4', name: 'NO!CE Chunky Strawberry Jam', weight: '125 g', eta: '8 MINS', price: 129, originalPrice: 169, discount: '23% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Mayo & Spreads': [
      ProductModel(id: 'ms_1', name: 'Hellmanns Roasted Garlic Mayonnaise', weight: '85 g', eta: '8 MINS', price: 42, originalPrice: 50, discount: '16% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'ms_2', name: 'Hellmanns Smoky Tandoori Mayonnaise', weight: '85 g', eta: '8 MINS', price: 42, originalPrice: 50, discount: '16% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'ms_3', name: 'Dr. Oetker FunFoods Veg Mayonnaise Original', weight: '100 g', eta: '8 MINS', price: 44, originalPrice: 49, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'ms_4', name: 'Hellmann\'s Veg Mayonnaise Bottle', weight: '250 g', eta: '8 MINS', price: 89, originalPrice: 98, discount: '9% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Dips & Dressing': [
      ProductModel(id: 'dd_1', name: 'Wingreens Farms Chipotle Dip', weight: '150 g', eta: '8 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'dd_2', name: 'Veeba Cheese & Jalapeno Dip', weight: '150 g', eta: '8 MINS', price: 79, originalPrice: 89, discount: '11% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'dd_3', name: 'Wingreens Garlic Dip', weight: '150 g', eta: '8 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'dd_4', name: 'Haberschmidt Honey Mustard Dressing', weight: '250 g', eta: '8 MINS', price: 145, originalPrice: 180, discount: '19% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Cooking Sauces': [
      ProductModel(id: 'cks_1', name: 'Ching\'s Secret Dark Soy Sauce', weight: '210 g', eta: '8 MINS', price: 55, originalPrice: 60, discount: '8% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cks_2', name: 'Ching\'s Secret Green Chilli Sauce', weight: '190 g', eta: '8 MINS', price: 50, originalPrice: 55, discount: '9% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cks_3', name: 'Del Monte Pizza Pasta Sauce', weight: '290 g', eta: '8 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'cks_4', name: 'FunFoods Pasta Pizza Sauce', weight: '325 g', eta: '8 MINS', price: 90, originalPrice: 105, discount: '14% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Asian Sauces': [
      ProductModel(id: 'as_1', name: 'Winn Schezwan Chutney Dip Pouch', weight: '90 g', eta: '8 MINS', price: 24, originalPrice: 30, discount: '20% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'as_2', name: 'Winn Schezwan Chutney Jar', weight: '275 g', eta: '8 MINS', price: 66, originalPrice: 110, discount: '40% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'as_3', name: 'MOI SOI Korean Chilli Oil Dip Spread', weight: '175 g', eta: '8 MINS', price: 238, originalPrice: 280, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'as_4', name: 'Ching\'s Secret Sriracha Green Chilli Sauce', weight: '225 g', eta: '8 MINS', price: 107, originalPrice: 120, discount: '11% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],
    'Honey and Cider': [
      ProductModel(id: 'hc_1', name: 'Saffola Honey Active Forest Honey', weight: '1 kg', eta: '8 MINS', price: 354, originalPrice: 499, discount: '29% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'hc_2', name: 'Dabur Organic Honey Glass Jar', weight: '300 g', eta: '8 MINS', price: 218, originalPrice: 330, discount: '34% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'hc_3', name: 'NO!CE Kashmir Valley Forest Honey', weight: '250 g', eta: '8 MINS', price: 159, originalPrice: 225, discount: '29% OFF', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
      ProductModel(id: 'hc_4', name: 'Dabur Squeezy Honey Pack (Buy 1 Get 1)', weight: '450 g', eta: '8 MINS', price: 177, originalPrice: 249, discount: '28% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ketchup/ketchup_PNG14.png'),
    ],

    // -------------------------------------------------------------------------
    // 3. SWEET CORNER SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Kaju Katli & Barfi': [
      ProductModel(id: 'sc_1', name: 'Daadi\'s Kaju Katli', weight: '200 g', eta: '8 MINS', price: 203, originalPrice: 250, discount: '18% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_2', name: 'Daadi\'s Jaggery Coconut Burfi', weight: '200 g', eta: '8 MINS', price: 178, originalPrice: 210, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_3', name: 'NO!CE Fresh Kaju Katli (No Preservatives)', weight: 'Pack of 1', eta: '8 MINS', price: 99, originalPrice: 129, discount: '23% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_4', name: 'NO!CE Jaggery Coconut Barfi (4 Pieces)', weight: '85 g', eta: '8 MINS', price: 75, originalPrice: 109, discount: '31% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],
    'Cakes and Pies': [
      ProductModel(id: 'cp_1', name: 'Britannia Choco Chill Cake', weight: '120 g', eta: '8 MINS', price: 30, originalPrice: 35, discount: '14% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'cp_2', name: 'Lotte Choco Pie Pack of 6', weight: '168 g', eta: '8 MINS', price: 90, originalPrice: 100, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'cp_3', name: 'Sunfeast Dark Fantasy Choco Fills Cake', weight: '150 g', eta: '8 MINS', price: 60, originalPrice: 70, discount: '14% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'cp_4', name: 'Ribbons & Balloons Brownie Pack', weight: '100 g', eta: '8 MINS', price: 85, originalPrice: 100, discount: '15% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],
    'Gulab Jamun': [
      ProductModel(id: 'gj_1', name: 'MTR Gulab Jamun Tin', weight: '500 g', eta: '8 MINS', price: 125, originalPrice: 140, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'gj_2', name: 'Haldiram\'s Gulab Jamun Tin', weight: '1 kg', eta: '8 MINS', price: 220, originalPrice: 250, discount: '12% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'gj_3', name: 'Bikano Rasgulla Tin', weight: '500 g', eta: '8 MINS', price: 115, originalPrice: 130, discount: '11% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'gj_4', name: 'Bikanervala Cham Cham Box', weight: '500 g', eta: '8 MINS', price: 180, originalPrice: 210, discount: '14% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],
    'Cream Biscuits': [
      ProductModel(id: 'sc_cb1', name: 'Oreo Dark Fantasy Bourbon', weight: '120 g', eta: '8 MINS', price: 35, originalPrice: 40, discount: '12% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_cb2', name: 'Sunfeast Dark Fantasy Choco Fills', weight: '300 g', eta: '8 MINS', price: 120, originalPrice: 150, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_cb3', name: 'Hide & Seek Chocolate Chip Biscuits', weight: '200 g', eta: '8 MINS', price: 50, originalPrice: 50, discount: 'MRP', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'sc_cb4', name: 'Britannia Jim Jam Biscuits', weight: '150 g', eta: '8 MINS', price: 35, originalPrice: 40, discount: '12% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],
    'Mysore Pak': [
      ProductModel(id: 'mp_1', name: 'Anand Sweets Special Ghee Mysore Pak', weight: '250 g', eta: '8 MINS', price: 210, originalPrice: 240, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'mp_2', name: 'Sri Krishna Sweets Melt-in-Mouth Mysorepa', weight: '250 g', eta: '8 MINS', price: 225, originalPrice: 250, discount: '10% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'mp_3', name: 'Haldiram\'s Soft Ghee Mysore Pak', weight: '200 g', eta: '8 MINS', price: 160, originalPrice: 180, discount: '11% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
      ProductModel(id: 'mp_4', name: 'Maiyas Special Mysore Pak Box', weight: '200 g', eta: '8 MINS', price: 150, originalPrice: 170, discount: '11% OFF', image: 'https://pngimg.com/uploads/candy/candy_PNG98.png'),
    ],

    // -------------------------------------------------------------------------
    // 4. CHIPS AND NAMKEENS SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Potato Chips': [
      ProductModel(id: 'pc_1', name: 'Lay\'s Classic Salted Potato Chips', weight: '50 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'pc_2', name: 'Lay\'s India\'s Magic Masala Chips', weight: '50 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'pc_3', name: 'Pringles Sour Cream & Onion', weight: '107 g', eta: '8 MINS', price: 105, originalPrice: 115, discount: '8% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'pc_4', name: 'Bingo Mad Angles Achaari Masti', weight: '66 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
    ],
    'Namkeen & Bhujia': [
      ProductModel(id: 'nb_1', name: 'Haldiram\'s Aloo Bhujia Pack', weight: '200 g', eta: '8 MINS', price: 55, originalPrice: 60, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'nb_2', name: 'Haldiram\'s Khatta Meetha Mix', weight: '200 g', eta: '8 MINS', price: 55, originalPrice: 60, discount: '8% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'nb_3', name: 'Kurkure Masala Munch', weight: '85 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'nb_4', name: 'Bikaji Bhujia Sev Classic', weight: '400 g', eta: '8 MINS', price: 115, originalPrice: 130, discount: '11% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
    ],
    'Nachos & Popcorn': [
      ProductModel(id: 'np_1', name: 'Doritos Cheese Nachos', weight: '60 g', eta: '8 MINS', price: 30, originalPrice: 30, discount: 'MRP', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'np_2', name: 'Act II Butter Instant Popcorn', weight: '60 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'np_3', name: '4700BC Caramel Gourmet Popcorn', weight: '125 g', eta: '8 MINS', price: 150, originalPrice: 175, discount: '14% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'np_4', name: 'Cornitos Jalapeno Nacho Chips', weight: '60 g', eta: '8 MINS', price: 35, originalPrice: 40, discount: '12% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
    ],
    'Roasted Snacks': [
      ProductModel(id: 'rs_1', name: 'Farmley Roasted Salted Makhana', weight: '100 g', eta: '8 MINS', price: 149, originalPrice: 180, discount: '17% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'rs_2', name: 'Tong Garden Salted Roasted Cashews', weight: '40 g', eta: '8 MINS', price: 90, originalPrice: 100, discount: '10% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'rs_3', name: 'Farmley Roasted Pudina Makhana', weight: '100 g', eta: '8 MINS', price: 149, originalPrice: 180, discount: '17% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
      ProductModel(id: 'rs_4', name: 'Haldiram Roasted Chana With Skin', weight: '200 g', eta: '8 MINS', price: 45, originalPrice: 50, discount: '10% OFF', image: 'https://pngimg.com/uploads/potato_chips/potato_chips_PNG73.png'),
    ],

    // -------------------------------------------------------------------------
    // 5. CHOCOLATES SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Chocolate Bars': [
      ProductModel(id: 'cb_1', name: 'Cadbury Dairy Milk Silk Milk Chocolate', weight: '150 g', eta: '8 MINS', price: 165, originalPrice: 175, discount: '6% OFF', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'cb_2', name: 'Amul Dark Chocolate 55% Cocoa', weight: '150 g', eta: '8 MINS', price: 110, originalPrice: 125, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'cb_3', name: 'Nestle KitKat 4 Finger Chocolate', weight: '38 g', eta: '8 MINS', price: 30, originalPrice: 30, discount: 'MRP', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'cb_4', name: 'Snickers Peanut Chocolate Bar', weight: '45 g', eta: '8 MINS', price: 40, originalPrice: 40, discount: 'MRP', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
    ],
    'Gifting Boxes': [
      ProductModel(id: 'gb_1', name: 'Ferrero Rocher Hazelnut Chocolates Box', weight: '16 Pieces', eta: '8 MINS', price: 499, originalPrice: 550, discount: '9% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'gb_2', name: 'Cadbury Celebrations Premium Gift Pack', weight: '180 g', eta: '8 MINS', price: 140, originalPrice: 150, discount: '7% OFF', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'gb_3', name: 'Lindt Lindor Assorted Swiss Chocolates', weight: '200 g', eta: '8 MINS', price: 650, originalPrice: 750, discount: '13% OFF', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'gb_4', name: 'Toblerone Swiss Milk Chocolate Gift Pack', weight: '200 g', eta: '8 MINS', price: 299, originalPrice: 350, discount: '14% OFF', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
    ],
    'Wafers & Bites': [
      ProductModel(id: 'wb_1', name: 'Munch Max Chocolate Wafer Bar', weight: '36 g', eta: '8 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'wb_2', name: 'Perk Chocolate Coated Wafer Bar', weight: '28 g', eta: '8 MINS', price: 10, originalPrice: 10, discount: 'MRP', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'wb_3', name: 'Cadbury Shots Crisp Chocolate Balls', weight: '18 g', eta: '8 MINS', price: 10, originalPrice: 10, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
      ProductModel(id: 'wb_4', name: 'Kinder Joy Chocolate with Surprise Toy', weight: '20 g', eta: '8 MINS', price: 45, originalPrice: 45, discount: 'MRP', image: 'https://pngimg.com/uploads/chocolate/chocolate_PNG97155.png'),
    ],

    // -------------------------------------------------------------------------
    // 6. BISCUITS AND CAKES SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Cookies': [
      ProductModel(id: 'ck_1', name: 'Sunfeast Dark Fantasy Choco Fills', weight: '300 g', eta: '8 MINS', price: 120, originalPrice: 150, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'ck_2', name: 'Unibic Butter Cookies Pack', weight: '150 g', eta: '8 MINS', price: 50, originalPrice: 60, discount: '16% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'ck_3', name: 'Parle Hide & Seek Choco Chip Cookies', weight: '200 g', eta: '8 MINS', price: 50, originalPrice: 50, discount: 'MRP', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'ck_4', name: 'Britannia Good Day Cashew Cookies', weight: '200 g', eta: '8 MINS', price: 45, originalPrice: 50, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
    ],
    'Rusks & Toast': [
      ProductModel(id: 'rt_1', name: 'Britannia Bake Rusk Toast', weight: '200 g', eta: '8 MINS', price: 35, originalPrice: 40, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'rt_2', name: 'Parle Premium Elaichi Rusk', weight: '200 g', eta: '8 MINS', price: 30, originalPrice: 35, discount: '14% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'rt_3', name: 'Sunfeast Milk Rusk Extra Crunchy', weight: '200 g', eta: '8 MINS', price: 32, originalPrice: 38, discount: '15% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'rt_4', name: 'MTR Butter Rusk Sliced Toast', weight: '200 g', eta: '8 MINS', price: 45, originalPrice: 50, discount: '10% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
    ],
    'Cakes & Rolls': [
      ProductModel(id: 'cr_1', name: 'Britannia Gobbles Chocolate Cake', weight: '120 g', eta: '8 MINS', price: 30, originalPrice: 35, discount: '14% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'cr_2', name: 'Lotte Choco Pie Multipack', weight: '168 g', eta: '8 MINS', price: 90, originalPrice: 100, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'cr_3', name: 'Winkies Vanilla Swiss Roll Pack', weight: '150 g', eta: '8 MINS', price: 50, originalPrice: 60, discount: '16% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
      ProductModel(id: 'cr_4', name: 'Elite Plum Cake Slice Pack', weight: '200 g', eta: '8 MINS', price: 80, originalPrice: 95, discount: '15% OFF', image: 'https://pngimg.com/uploads/biscuit/biscuit_PNG122.png'),
    ],

    // -------------------------------------------------------------------------
    // 7. ICE CREAMS SUBCATEGORIES
    // -------------------------------------------------------------------------
    'Ice Cream Tubs': [
      ProductModel(id: 'ict_1', name: 'Amul Vanilla Gold Ice Cream Tub', weight: '1 Litre', eta: '8 MINS', price: 180, originalPrice: 200, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'ict_2', name: 'Baskin Robbins Belgian Chocolate Tub', weight: '450 ml', eta: '8 MINS', price: 320, originalPrice: 380, discount: '15% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'ict_3', name: 'Kwality Wall\'s Alphonso Mango Tub', weight: '700 ml', eta: '8 MINS', price: 160, originalPrice: 195, discount: '18% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'ict_4', name: 'Havmor Butterscotch Crunch Tub', weight: '1 Litre', eta: '8 MINS', price: 210, originalPrice: 250, discount: '16% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
    ],
    'Cones & Sticks': [
      ProductModel(id: 'cs_ic1', name: 'Cornetto Choco Vanilla Cone', weight: '105 ml', eta: '8 MINS', price: 40, originalPrice: 40, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'cs_ic2', name: 'Magnum Almond Ice Cream Stick', weight: '80 ml', eta: '8 MINS', price: 90, originalPrice: 100, discount: '10% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'cs_ic3', name: 'Amul Tricone Butterscotch', weight: '120 ml', eta: '8 MINS', price: 35, originalPrice: 35, discount: 'MRP', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'cs_ic4', name: 'Havmor Choco Block Ice Cream Cone', weight: '110 ml', eta: '8 MINS', price: 45, originalPrice: 50, discount: '10% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
    ],
    'Kulfi & Candies': [
      ProductModel(id: 'kc_1', name: 'Amul Malai Kulfi Stick', weight: '60 ml', eta: '8 MINS', price: 25, originalPrice: 25, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'kc_2', name: 'Kwality Wall\'s Orange Mahacandy Stick', weight: '60 ml', eta: '8 MINS', price: 15, originalPrice: 15, discount: 'MRP', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'kc_3', name: 'Havmor Matka Kulfi Pot', weight: '100 ml', eta: '8 MINS', price: 50, originalPrice: 60, discount: '16% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
      ProductModel(id: 'kc_4', name: 'Vadilal Pista Kulfi Slice Pack', weight: '70 ml', eta: '8 MINS', price: 30, originalPrice: 35, discount: '14% OFF', image: 'https://pngimg.com/uploads/ice_cream/ice_cream_PNG5097.png'),
    ],
  };
}