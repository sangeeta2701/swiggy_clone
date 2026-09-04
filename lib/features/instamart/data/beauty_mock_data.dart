import '../models/product_model.dart';

class BeautyMockData {
  static const Map<String, List<CategoryModel>> categorySubCategories = {
    // --- 1. BATH AND BODY ---
    'Bath and Body': [
      CategoryModel(name: 'Soaps', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Shower gel', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Oral care', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Handwash', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Fragrance & Talc', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      CategoryModel(name: 'Body Lotion', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Bath Accessories', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Womens Deos', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      CategoryModel(name: 'Mens Deos', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
    ],

    // --- 2. HAIR CARE ---
    'Hair Care': [
      CategoryModel(name: 'Hair Oils and Serums', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Shampoo', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Conditioners & Masks', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Hair Colour', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Premium Brands', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Hair Styling Gel & Wax', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      CategoryModel(name: 'Combs & Brushes', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Hair Dryers and Tools', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Hair Supplements', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // --- 3. SKINCARE ---
    'Skincare': [
      CategoryModel(name: 'Face wash and scrubs', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Masks & Cleansers', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Serums, Toners', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Creams & Moisturizers', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Sunscreen', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Body Lotions', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      CategoryModel(name: 'Beauty Supplements', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // --- 4. MAKEUP ---
    'Makeup': [
      CategoryModel(name: 'Lips', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      CategoryModel(name: 'Eyes', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      CategoryModel(name: 'Eye lens', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      CategoryModel(name: 'Face', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      CategoryModel(name: 'Nails', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      CategoryModel(name: 'Tools & Brushes', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      CategoryModel(name: 'Beauty Supplements', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
  };

  static const Map<String, List<ProductModel>> catalogProducts = {
    // =========================================================================
    // 1. BATH AND BODY CATALOG
    // =========================================================================
    'Soaps': [
      ProductModel(id: 'bb_sp1', name: 'Dove Cream Beauty Bathing Bar B4G1 Free', weight: '625 g', eta: '5 MINS', price: 288, originalPrice: 519, discount: '44% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_sp2', name: 'Santoor Sandal & Turmeric Soap Pack', weight: '500 g', eta: '5 MINS', price: 157, originalPrice: 209, discount: '22% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_sp3', name: 'Fiama Gel Bathing Bar Celebration Pack', weight: '375 g', eta: '5 MINS', price: 175, originalPrice: 270, discount: '35% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_sp4', name: 'Mysore Sandal Soap Premium Pure Sandalwood', weight: '75 g', eta: '5 MINS', price: 35, originalPrice: 38, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Shower gel': [
      ProductModel(id: 'bb_sg1', name: 'Mannlich 2% Salicylic Acid Bacne Clear Bodywash', weight: '300 ml', eta: '5 MINS', price: 359, originalPrice: 699, discount: '48% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'bb_sg2', name: 'DOVE 3% Brightening Serum + Vitamin C Glow Body Wash', weight: '300 ml', eta: '5 MINS', price: 252, originalPrice: 399, discount: '36% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'bb_sg3', name: 'Chemist at Play Daily Exfoliating Body Wash', weight: '473 ml', eta: '5 MINS', price: 695, originalPrice: 799, discount: '13% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'bb_sg4', name: 'LUX Orchid Obsession Radiant Glow Body Wash', weight: '245 ml', eta: '5 MINS', price: 87, originalPrice: 99, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Oral care': [
      ProductModel(id: 'bb_oc1', name: 'Colgate Visible White Purple Toothpaste', weight: '120 g', eta: '5 MINS', price: 164, originalPrice: 198, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_oc2', name: 'Colgate Total Advanced Health Antibacterial Toothpaste', weight: '300 g', eta: '5 MINS', price: 240, originalPrice: 400, discount: '40% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_oc3', name: 'Colgate Periogard Gum Expert Toothbrush Ultra Soft', weight: '1 Piece', eta: '5 MINS', price: 140, originalPrice: 165, discount: '15% OFF', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_oc4', name: 'Sensodyne Sensitive Soft Toothbrush Pack of 3', weight: '3 pieces', eta: '5 MINS', price: 104, originalPrice: 130, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Handwash': [
      ProductModel(id: 'bb_hw1', name: 'Dettol Skincare Liquid Handwash Refill Pouch', weight: '750 ml', eta: '5 MINS', price: 119, originalPrice: 149, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_hw2', name: 'Lifebuoy Total 10 Handwash Pump Bottle', weight: '200 ml', eta: '5 MINS', price: 89, originalPrice: 99, discount: '10% OFF', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_hw3', name: 'Santoor Mild Handwash Aloe Vera & Lemon', weight: '500 ml', eta: '5 MINS', price: 95, originalPrice: 120, discount: '21% OFF', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_hw4', name: 'Palmolive Foaming Handwash Lime & Mint', weight: '250 ml', eta: '5 MINS', price: 145, originalPrice: 175, discount: '17% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Fragrance & Talc': [
      ProductModel(id: 'bb_ft1', name: 'Bella Vita Luxury Unisex Perfume Gift Set 4', weight: '80 ml', eta: '5 MINS', price: 549, originalPrice: 849, discount: '35% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_ft2', name: 'Bella Vita Luxury Perfumes Gift Set for Women', weight: '80 ml', eta: '5 MINS', price: 432, originalPrice: 849, discount: '49% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_ft3', name: 'Pond\'s Dreamflower Pink Lily Fragrant Talc', weight: '200 g', eta: '5 MINS', price: 135, originalPrice: 160, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_ft4', name: 'Nivea Pure Talc Refreshing Powder', weight: '100 g', eta: '5 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
    ],
    'Body Lotion': [
      ProductModel(id: 'bb_bl1', name: 'Nivea Body Lotion Cocoa Nourish Very Dry Skin', weight: '400 ml', eta: '5 MINS', price: 325, originalPrice: 499, discount: '35% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'bb_bl2', name: 'Vaseline Intensive Care Deep Moisture Body Lotion', weight: '400 ml', eta: '5 MINS', price: 285, originalPrice: 425, discount: '33% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'bb_bl3', name: 'Parachute Advansed Body Lotion Deep Nourish', weight: '250 ml', eta: '5 MINS', price: 145, originalPrice: 215, discount: '32% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'bb_bl4', name: 'Cetaphil Moisturising Lotion Dry Sensitive Skin', weight: '250 ml', eta: '5 MINS', price: 495, originalPrice: 550, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Bath Accessories': [
      ProductModel(id: 'bb_ba1', name: 'MiDazzle Large Bathing Loofah Sponge Exfoliator', weight: '1 Piece', eta: '5 MINS', price: 89, originalPrice: 99, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_ba2', name: 'MiDazzle Medium Bathing Loofah Sponge Exfoliator', weight: '1 Piece', eta: '5 MINS', price: 62, originalPrice: 69, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_ba3', name: 'Nat Habit Loofah 100% Organic Pack of 2', weight: '1 pack', eta: '5 MINS', price: 229, originalPrice: 245, discount: '6% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'bb_ba4', name: 'GUBB Cotton Pads Embossed 100% Hydrophilic', weight: '50 pieces', eta: '5 MINS', price: 86, originalPrice: 93, discount: '7% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Womens Deos': [
      ProductModel(id: 'bb_wd1', name: 'Godrej Bloq Deo Antiperspirant Underarm Sweat Control', weight: '40 g', eta: '5 MINS', price: 89, originalPrice: 99, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_wd2', name: 'Dove Advanced Care Original Deodorant Spray', weight: '250 ml', eta: '5 MINS', price: 219, originalPrice: 399, discount: '45% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_wd3', name: 'Engage Blush Deodorant Spray for Women', weight: '150 ml', eta: '5 MINS', price: 187, originalPrice: 240, discount: '22% OFF', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_wd4', name: 'Nivea Pearl & Beauty Women\'s Deodorant Spray', weight: '150 ml', eta: '5 MINS', price: 203, originalPrice: 299, discount: '32% OFF', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
    ],
    'Mens Deos': [
      ProductModel(id: 'bb_md1', name: 'Nivea Men Fresh Ocean Deodorant 48H Long Lasting', weight: '150 ml', eta: '5 MINS', price: 132, originalPrice: 299, discount: '55% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_md2', name: 'Nivea Fresh Active Deodorant Spray For Men', weight: '150 ml', eta: '5 MINS', price: 194, originalPrice: 299, discount: '35% OFF', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_md3', name: 'Wild Stone CODE Titanium Body Spray', weight: '120 ml', eta: '5 MINS', price: 210, originalPrice: 275, discount: '23% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
      ProductModel(id: 'bb_md4', name: 'Fogg Marco Body Spray Deodorant for Men', weight: '150 ml', eta: '5 MINS', price: 185, originalPrice: 235, discount: '21% OFF', image: 'https://pngimg.com/uploads/perfume/perfume_PNG10237.png'),
    ],

    // =========================================================================
    // 2. HAIR CARE CATALOG
    // =========================================================================
    'Hair Oils and Serums': [
      ProductModel(id: 'hc_ho1', name: 'Parachute Advansed Super Smooth Hair Serum | Coconut & Vit E', weight: '100 ml', eta: '7 MINS', price: 259, originalPrice: 399, discount: '35% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_ho2', name: 'Deyga Hair Growth Oil | Promotes Hair Growth', weight: '100 ml', eta: '7 MINS', price: 499, originalPrice: 600, discount: '17% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_ho3', name: 'Parachute Pure Coconut Oil Bottle', weight: '100 ml', eta: '7 MINS', price: 65, originalPrice: 65, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_ho4', name: 'Parachute Advansed Gold Coconut Hair Oil', weight: '100 ml', eta: '7 MINS', price: 37, originalPrice: 61, discount: '39% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Shampoo': [
      ProductModel(id: 'hc_sh1', name: 'Tresemme Keratin Smooth Shampoo With Argan Oil', weight: '580 ml', eta: '7 MINS', price: 461, originalPrice: 966, discount: '52% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sh2', name: 'Schwarzkopf Professional Bonacure Frizz Away Shampoo', weight: '250 ml', eta: '7 MINS', price: 850, originalPrice: 1000, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sh3', name: 'Clinic Plus Strong & Long Shampoo with Milk Proteins', weight: '80 ml', eta: '7 MINS', price: 49, originalPrice: 50, discount: '2% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sh4', name: 'MOXIE BEAUTY Rinse & Shine Minis Duo', weight: '1 pack', eta: '7 MINS', price: 49, originalPrice: 150, discount: '67% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Conditioners & Masks': [
      ProductModel(id: 'hc_cm1', name: 'L\'Oréal Professionnel Absolut Repair Mask For Dry Hair', weight: '250 g', eta: '7 MINS', price: 929, originalPrice: 999, discount: '5% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'hc_cm2', name: 'L\'Oréal Professionnel Absolut Repair Shampoo For Dry Hair', weight: '300 ml', eta: '7 MINS', price: 747, originalPrice: 795, discount: '4% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_cm3', name: 'L\'Oréal Professionnel Scalp Advanced Anti-Dandruff Shampoo', weight: '300 ml', eta: '7 MINS', price: 935, originalPrice: 995, discount: '6% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_cm4', name: 'L\'Oréal Professionnel Density Advanced Shampoo For Thinning Hair', weight: '300 ml', eta: '7 MINS', price: 795, originalPrice: 850, discount: '6% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Hair Colour': [
      ProductModel(id: 'hc_hc1', name: 'L\'Oreal Paris Casting Crème Gloss Hair Colour Dark Brown', weight: '87.5 g', eta: '7 MINS', price: 550, originalPrice: 600, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_hc2', name: 'Garnier Color Naturals Crème Hair Color Black', weight: '100 g', eta: '7 MINS', price: 199, originalPrice: 225, discount: '11% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_hc3', name: 'Bigen Powder Hair Color Black', weight: '6 g', eta: '7 MINS', price: 85, originalPrice: 95, discount: '10% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_hc4', name: 'Indica Easy 10 Minutes Herbal Hair Color Black', weight: '25 ml', eta: '7 MINS', price: 40, originalPrice: 45, discount: '11% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Premium Brands': [
      ProductModel(id: 'hc_pb1', name: 'Olaplex No. 3 Hair Perfector Repairing Treatment', weight: '100 ml', eta: '7 MINS', price: 2850, originalPrice: 3000, discount: '5% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_pb2', name: 'Moroccanoil Treatment Original Hair Serum', weight: '100 ml', eta: '7 MINS', price: 3870, originalPrice: 4100, discount: '5% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_pb3', name: 'Kérastase Elixir Ultime Hair Oil', weight: '100 ml', eta: '7 MINS', price: 3900, originalPrice: 4200, discount: '7% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_pb4', name: 'L\'Oréal Professionnel Absolut Repair Oil Serum', weight: '90 ml', eta: '7 MINS', price: 1350, originalPrice: 1500, discount: '10% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Hair Styling Gel & Wax': [
      ProductModel(id: 'hc_sg1', name: 'Set Wet Hair Gel Cool Hold Blue', weight: '250 ml', eta: '7 MINS', price: 110, originalPrice: 130, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sg2', name: 'Bardo Hair Wax Matte Look For Men', weight: '100 g', eta: '7 MINS', price: 299, originalPrice: 399, discount: '25% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sg3', name: 'Gatsby Styling Wax Tough & Shine', weight: '75 g', eta: '7 MINS', price: 185, originalPrice: 220, discount: '15% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
      ProductModel(id: 'hc_sg4', name: 'Ustraa Hair Wax Matte Look Strong Hold', weight: '100 g', eta: '7 MINS', price: 349, originalPrice: 450, discount: '22% OFF', image: 'https://pngimg.com/uploads/shampoo/shampoo_PNG18.png'),
    ],
    'Combs & Brushes': [
      ProductModel(id: 'hc_cb1', name: 'averX Kacchi Neem Wood Hair Comb', weight: '2 pieces', eta: '7 MINS', price: 199, originalPrice: 499, discount: '60% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_cb2', name: 'Beardo Roller Hair Brush For Men | Smoothening', weight: '1 Piece', eta: '7 MINS', price: 162, originalPrice: 200, discount: '19% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_cb3', name: 'Gubb Paddle Hair Brush (Topical Bloom) Gb-Lh-001', weight: 'Multicolour', eta: '7 MINS', price: 184, originalPrice: 325, discount: '43% OFF', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_cb4', name: 'Gubb Hair Rollers Medium Pink', weight: 'Pink', eta: '7 MINS', price: 159, originalPrice: 195, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Hair Dryers and Tools': [
      ProductModel(id: 'hc_dt1', name: 'Pigeon Bloom Hair Dryer (Pink)', weight: '10 W', eta: '7 MINS', price: 549, originalPrice: 895, discount: '38% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_dt2', name: 'VEGA Litstyle L3 3-in-1 Volumizer Hair Dryer Brush', weight: '500 W', eta: '7 MINS', price: 1249, originalPrice: 1650, discount: '24% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_dt3', name: 'Agaro Professional Hair Dryer Volumizer Styler Brush', weight: '500 W', eta: '7 MINS', price: 1889, originalPrice: 3999, discount: '52% OFF', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'hc_dt4', name: 'Philips Heated Hair Brush Straightener (Wine)', weight: '1 unit', eta: '7 MINS', price: 2599, originalPrice: 3695, discount: '29% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
    'Hair Supplements': [
      ProductModel(id: 'hc_hs1', name: 'Man Matters Biotin Hair Gummies | No Added Sugar', weight: '30 Gummies', eta: '7 MINS', price: 549, originalPrice: 650, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hc_hs2', name: 'hk vitals Biotin (90 Tablets)', weight: '90 tablets', eta: '7 MINS', price: 539, originalPrice: 619, discount: '12% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hc_hs3', name: 'What\'s Up Wellness Natural Biotin Gummies No Added Sugar', weight: '30 pieces', eta: '7 MINS', price: 622, originalPrice: 799, discount: '22% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hc_hs4', name: 'Elicious Naturals Neem Leaf Powder For Hair, Skin', weight: '200 g', eta: '7 MINS', price: 177, originalPrice: 199, discount: '11% OFF', badge: 'SOLD OUT', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // =========================================================================
    // 3. SKINCARE CATALOG
    // =========================================================================
    'Face wash and scrubs': [
      ProductModel(id: 'sc_fw1', name: 'Dot & Key Vitamin C+E Gel Face Wash', weight: '100 ml', eta: '6 MINS', price: 220, originalPrice: 249, discount: '11% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_fw2', name: 'Mamaearth Rice Face Wash With Rice Water Niacinamide', weight: '100 ml', eta: '6 MINS', price: 196, originalPrice: 285, discount: '31% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_fw3', name: 'Cetaphil Gentle Skin Cleanser Face Wash', weight: '118 ml', eta: '6 MINS', price: 362, originalPrice: 459, discount: '21% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_fw4', name: 'Minimalist Salicylic Acid Face Wash For Acne & Oil Control', weight: '100 ml', eta: '6 MINS', price: 284, originalPrice: 299, discount: '5% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Masks & Cleansers': [
      ProductModel(id: 'sc_mc1', name: 'Everyuth Naturals Natural Glow Orange Peel-off Mask Tube', weight: '50 g', eta: '6 MINS', price: 81, originalPrice: 95, discount: '14% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_mc2', name: 'Everyuth Naturals Golden Glow Peeloff Mask', weight: '90 g', eta: '6 MINS', price: 178, originalPrice: 210, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_mc3', name: 'Lakme Blush & Glow Strawberry Sheet Mask', weight: '1 Piece', eta: '6 MINS', price: 70, originalPrice: 100, discount: '30% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_mc4', name: 'MIRABELLE KOREA Cucumber Fairness Facial Mask', weight: 'Pack of 5', eta: '6 MINS', price: 99, originalPrice: 150, discount: '34% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Serums, Toners': [
      ProductModel(id: 'sc_st1', name: 'Cetaphil Bhr Brightness Refresh Toner', weight: '150 ml', eta: '6 MINS', price: 1079, originalPrice: 1199, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_st2', name: 'The Derma Co 10% Vitamin C Face Serum, 5% Niacinamide', weight: '30 ml', eta: '6 MINS', price: 539, originalPrice: 649, discount: '16% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_st3', name: 'Nua Nose Strip | Removes Blackheads & Whiteheads', weight: '3 pieces', eta: '6 MINS', price: 84, originalPrice: 108, discount: '22% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_st4', name: 'Lacto Calamine E Vitamin C Face Sheet Mask', weight: '1 pack', eta: '6 MINS', price: 47, originalPrice: 75, discount: '37% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Creams & Moisturizers': [
      ProductModel(id: 'sc_cm1', name: 'Neutrogena Hydro Boost Water Gel Face Moisturizer', weight: '13 g', eta: '6 MINS', price: 299, originalPrice: 400, discount: '25% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_cm2', name: 'Simple Kind To Skin Hydrating Light Moisturiser', weight: '125 ml', eta: '6 MINS', price: 259, originalPrice: 499, discount: '48% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_cm3', name: 'Minimalist Vitamin B5 10% Oil Free Moisturizer', weight: '50 g', eta: '6 MINS', price: 332, originalPrice: 349, discount: '4% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_cm4', name: 'Minimalist SPF 50 Sunscreen Mini', weight: '30 g', eta: '6 MINS', price: 237, originalPrice: 249, discount: '4% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Sunscreen': [
      ProductModel(id: 'sc_sn1', name: 'Dot & Key Waterlight Sunscreen SPF 50 PA++++', weight: '50 g', eta: '6 MINS', price: 345, originalPrice: 395, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_sn2', name: 'Aqualogica Glow+ Dewy Sunscreen SPF 50', weight: '50 g', eta: '6 MINS', price: 339, originalPrice: 399, discount: '15% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_sn3', name: 'Derma Co 1% Hyaluronic Sunscreen Aqua Gel', weight: '50 g', eta: '6 MINS', price: 420, originalPrice: 499, discount: '15% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_sn4', name: 'Lacto Calamine Sunscreen SPF 50 PA+++', weight: '50 g', eta: '6 MINS', price: 199, originalPrice: 249, discount: '20% OFF', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Body Lotions': [
      ProductModel(id: 'sc_bl1', name: 'Vaseline Gluta Hya Dewy Radiance Lotion', weight: '200 ml', eta: '6 MINS', price: 243, originalPrice: 415, discount: '41% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_bl2', name: 'Vaseline Gluta Hya Flawless Glow Lotion', weight: '200 ml', eta: '6 MINS', price: 311, originalPrice: 415, discount: '25% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_bl3', name: 'Vaseline Deep Moisture Body Lotion', weight: '400 ml', eta: '6 MINS', price: 247, originalPrice: 515, discount: '52% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
      ProductModel(id: 'sc_bl4', name: 'Vaseline COCOA GLOW SERUM IN LOTION 100% PURE', weight: '400 ml', eta: '6 MINS', price: 320, originalPrice: 640, discount: '50% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cream/cream_PNG23.png'),
    ],
    'Beauty Supplements': [
      ProductModel(id: 'sc_bs1', name: 'hk vitals Biotin 90 Tablets For Hair & Skin', weight: '90 tablets', eta: '6 MINS', price: 539, originalPrice: 619, discount: '12% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'sc_bs2', name: 'Man Matters Biotin Hair & Skin Gummies', weight: '30 Gummies', eta: '6 MINS', price: 549, originalPrice: 650, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'sc_bs3', name: 'What\'s Up Wellness Collagen Powder', weight: '250 g', eta: '6 MINS', price: 899, originalPrice: 1099, discount: '18% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'sc_bs4', name: 'Swisse Beauty Skin Glow Collagen Tablets', weight: '60 Tablets', eta: '6 MINS', price: 1299, originalPrice: 1499, discount: '13% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // =========================================================================
    // 4. MAKEUP CATALOG
    // =========================================================================
    'Lips': [
      ProductModel(id: 'mu_lp1', name: 'B.O.B.I Ruby 4 Velvet Matte Liquid Lipstick', weight: 'RUBY_4', eta: '6 MINS', price: 319, originalPrice: 399, discount: '20% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_lp2', name: 'Dot & Key Barrier Repair Hydrating Lip Balm SPF 50', weight: 'Cherry Crimson', eta: '6 MINS', price: 199, originalPrice: 249, discount: '20% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_lp3', name: 'MARS Edge of Desire Lip Liner (Exotic Brown)', weight: '1.4g', eta: '6 MINS', price: 68, originalPrice: 69, discount: '1% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_lp4', name: 'Mamaearth Moisture Matte Longstay Lipstick Plum Punch', weight: '02 Plum', eta: '6 MINS', price: 297, originalPrice: 349, discount: '15% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
    ],
    'Eyes': [
      ProductModel(id: 'mu_ey1', name: 'B.O.B.I Brown Eyebrow Pencil - Waterproof Smudge-proof', weight: 'Brown', eta: '6 MINS', price: 439, originalPrice: 549, discount: '20% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_ey2', name: 'Blue Heaven Black Eyeliner (Pencil, Matte)', weight: 'Black', eta: '6 MINS', price: 160, originalPrice: 200, discount: '20% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_ey3', name: 'Maybelline New York Colossal Matte Pencil', weight: 'Black', eta: '6 MINS', price: 135, originalPrice: 220, discount: '38% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_ey4', name: 'Maybelline New York Black Kajal (36 HR Lasting)', weight: 'Black', eta: '6 MINS', price: 295, originalPrice: 369, discount: '20% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
    ],
    'Eye lens': [
      ProductModel(id: 'mu_el1', name: 'Aqualens Comfort Contact Lens Solution 60Ml', weight: '60 ml', eta: '6 MINS', price: 199, originalPrice: 220, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_el2', name: 'Aqualens Comfort Contact Lens Solution - Multi Pack', weight: '1 pack', eta: '6 MINS', price: 549, originalPrice: 650, discount: '15% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_el3', name: 'Aquacolor Monthly Disposable Premium Envy Green Color', weight: '2 pieces', eta: '6 MINS', price: 1299, originalPrice: 1500, discount: '13% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_el4', name: 'Aquacolor Monthly Disposable Premium Silver Gray Color', weight: '2 pieces', eta: '6 MINS', price: 1299, originalPrice: 1500, discount: '13% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
    ],
    'Face': [
      ProductModel(id: 'mu_fc1', name: 'Maybelline Fit Me Matte + Poreless Foundation', weight: '30 ml', eta: '6 MINS', price: 499, originalPrice: 599, discount: '16% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_fc2', name: 'Lakme Complexion Care Face CC Cream', weight: '30 g', eta: '6 MINS', price: 299, originalPrice: 350, discount: '14% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_fc3', name: 'Insight Cosmetics Pro Concealer Palette', weight: '15 g', eta: '6 MINS', price: 199, originalPrice: 240, discount: '17% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_fc4', name: 'Sugar Cosmetics All Set To Go Translucent Powder', weight: '7 g', eta: '6 MINS', price: 549, originalPrice: 599, discount: '8% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
    ],
    'Nails': [
      ProductModel(id: 'mu_nl1', name: 'FACES CANADA Ultime Pro Splash Nail Enamel Marooned', weight: '8 ml', eta: '6 MINS', price: 93, originalPrice: 129, discount: '27% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_nl2', name: 'FACES CANADA Nail Enamel Remover Transparent 01', weight: '30 ml', eta: '6 MINS', price: 72, originalPrice: 99, discount: '27% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_nl3', name: 'FACES CANADA Ultime Pro Splash Quick Dry', weight: '8 g', eta: '6 MINS', price: 93, originalPrice: 129, discount: '27% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
      ProductModel(id: 'mu_nl4', name: 'Lakme Multicolour Color Crush Nail Art', weight: '6 ml', eta: '6 MINS', price: 179, originalPrice: 199, discount: '10% OFF', image: 'https://pngimg.com/uploads/lipstick/lipstick_PNG27.png'),
    ],
    'Tools & Brushes': [
      ProductModel(id: 'mu_tb1', name: 'MAJESTIQUE Professional Manicure And Pedicure Tools Kit', weight: '1 pack', eta: '6 MINS', price: 439, originalPrice: 549, discount: '20% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'mu_tb2', name: 'Nutips Eco-Fresh Cotton Balls 80 Units', weight: '80 pieces', eta: '6 MINS', price: 72, originalPrice: 75, discount: '4% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'mu_tb3', name: 'Gubb 250ml Transparent Hair Spray Bottle', weight: '50 g', eta: '6 MINS', price: 145, originalPrice: 155, discount: '6% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
      ProductModel(id: 'mu_tb4', name: 'Gubb Cotton Balls (Pack of 50)', weight: '50 pieces', eta: '6 MINS', price: 59, originalPrice: 64, discount: '7% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/soap/soap_PNG42.png'),
    ],
  };
}