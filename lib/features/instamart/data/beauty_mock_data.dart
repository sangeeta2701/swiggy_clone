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

    // --- 5. FEMININE HYGIENE (UPDATED EXACT SUBCATEGORIES) ---
    'Feminine Hygiene': [
      CategoryModel(name: 'Sanitary Pads', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      CategoryModel(name: 'Period Panties and Patches', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      CategoryModel(name: 'Hair Removal', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      CategoryModel(name: 'Menstrual Cups and Tampons', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      CategoryModel(name: 'Intimate Wipes and Washes', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      CategoryModel(name: 'Disposal Bags and Accessories', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],

    // --- 6. HEALTH AND PHARMA (UPDATED EXACT SUBCATEGORIES) ---
    'Health and Pharma': [
      CategoryModel(name: 'Oral & Dental Care', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Infections & First Aid', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Immunity & Energy', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Gummies', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Heart & Blood Care', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Weight Management', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Superfoods', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      CategoryModel(name: 'Allergy, Cough & Cold', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // --- 7. BABY CARE (UPDATED EXACT SUBCATEGORIES) ---
    'Baby Care': [
      CategoryModel(name: 'Baby Diapers', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Food and Cereals', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Bathing', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Wipes', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Cream & Lotion', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Gifts & More', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Feeding and Teething', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Oil and Talc', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Hygiene', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Books and Toys', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      CategoryModel(name: 'Baby Oral Care', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
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

    // =========================================================================
    // 5. FEMININE HYGIENE CATALOG
    // =========================================================================
    'Sanitary Pads': [
      ProductModel(id: 'fh_sp1', name: 'Whisper Choice Wings Sanitary Pads Pack', weight: '20 Pads', eta: '6 MINS', price: 110, originalPrice: 130, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_sp2', name: 'Stayfree Secure Extra Large Cottony Soft', weight: '28 Pads', eta: '6 MINS', price: 180, originalPrice: 220, discount: '18% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_sp3', name: 'Sofy Bodyfit Extra Long Overnight Pads', weight: '14 Pads', eta: '6 MINS', price: 145, originalPrice: 175, discount: '17% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_sp4', name: 'Nua Ultra Thin Rash-Free Sanitary Pads', weight: '12 Pads', eta: '6 MINS', price: 199, originalPrice: 249, discount: '20% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],
    'Period Panties and Patches': [
      ProductModel(id: 'fh_pp1', name: 'Sensur Ayurvedic Cramp Relief Roll On Fast & Safe', weight: '50 ml', eta: '6 MINS', price: 199, originalPrice: 299, discount: '33% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_pp2', name: 'Nua Cramp Comfort - Heat Patches For Period Pain', weight: '3 pieces', eta: '6 MINS', price: 277, originalPrice: 315, discount: '12% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_pp3', name: 'Plush Herbal Cramp Relief for Period Pain Self Heating', weight: '2 pieces', eta: '6 MINS', price: 200, originalPrice: 232, discount: '13% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_pp4', name: 'Whisper Period Panties Heavy Flow Protection', weight: '2 Pieces', eta: '6 MINS', price: 149, originalPrice: 180, discount: '17% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],
    'Hair Removal': [
      ProductModel(id: 'fh_hr1', name: 'Veet Pure Hair Removal Cream (Sensitive Skin)', weight: '100 g', eta: '6 MINS', price: 224, originalPrice: 325, discount: '31% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_hr2', name: 'Veet Ready-to-use Wax Strips (Sensitive Skin)', weight: '20 pieces', eta: '6 MINS', price: 233, originalPrice: 299, discount: '22% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_hr3', name: 'Plush Bikini Razor | No Cuts, No Bumps Promise', weight: '2 Pack', eta: '6 MINS', price: 202, originalPrice: 269, discount: '25% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_hr4', name: 'Plush Foldable Face & Eyebrow Razor | Painless', weight: '3 pieces', eta: '6 MINS', price: 149, originalPrice: 299, discount: '50% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],
    'Menstrual Cups and Tampons': [
      ProductModel(id: 'fh_mc1', name: 'Pee Safe Medical Grade Silicone Menstrual Cup', weight: '1 Unit', eta: '6 MINS', price: 299, originalPrice: 399, discount: '25% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_mc2', name: 'Suki Reusable Menstrual Cup Large Size', weight: '1 Unit', eta: '6 MINS', price: 349, originalPrice: 499, discount: '30% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_mc3', name: 'Digital Tampons Regular Applicator Free', weight: '16 Tampons', eta: '6 MINS', price: 210, originalPrice: 260, discount: '19% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_mc4', name: 'Sofy Digital Tampons Super Absorbent', weight: '20 Tampons', eta: '6 MINS', price: 250, originalPrice: 299, discount: '16% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],
    'Intimate Wipes and Washes': [
      ProductModel(id: 'fh_iw1', name: 'VWash Plus Expert Intimate Hygiene Wash', weight: '100 ml', eta: '6 MINS', price: 165, originalPrice: 199, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_iw2', name: 'Lactacyd Feminine Hygiene Wash Bottle', weight: '250 ml', eta: '6 MINS', price: 280, originalPrice: 350, discount: '20% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_iw3', name: 'Pee Safe Natural Intimate Wash For Women', weight: '105 ml', eta: '6 MINS', price: 185, originalPrice: 225, discount: '18% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_iw4', name: 'Pee Safe Wet Intimate Wipes Pack', weight: '10 Wipes', eta: '6 MINS', price: 99, originalPrice: 120, discount: '17% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],
    'Disposal Bags and Accessories': [
      ProductModel(id: 'fh_db1', name: 'Plush Disposal Bags for Pads & Condoms | Biodegradable', weight: '50 pieces', eta: '6 MINS', price: 152, originalPrice: 179, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_db2', name: 'Pee Safe Oxo-Biodegradable Sanitary Disposal Bags', weight: '30 Bags', eta: '6 MINS', price: 149, originalPrice: 175, discount: '15% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_db3', name: 'Carmesi Disposable Bags For Sanitary Waste', weight: '25 Bags', eta: '6 MINS', price: 120, originalPrice: 150, discount: '20% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
      ProductModel(id: 'fh_db4', name: 'Suki Odour Free Sanitary Disposal Bags', weight: '40 Bags', eta: '6 MINS', price: 130, originalPrice: 160, discount: '18% OFF', image: 'https://pngimg.com/uploads/wet_wipes/wet_wipes_PNG18.png'),
    ],

    // =========================================================================
    // 6. HEALTH AND PHARMA CATALOG
    // =========================================================================
    'Oral & Dental Care': [
      ProductModel(id: 'hp_od1', name: 'Colgate Total Dental Cream Toothpaste', weight: '150 g', eta: '6 MINS', price: 145, originalPrice: 175, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_od2', name: 'Sensodyne Rapid Relief Sensitive Toothpaste', weight: '80 g', eta: '6 MINS', price: 190, originalPrice: 220, discount: '13% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_od3', name: 'Listerine Antiseptic Mouthwash Cool Mint', weight: '250 ml', eta: '6 MINS', price: 155, originalPrice: 180, discount: '14% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_od4', name: 'Oral-B Essential Dental Floss Unwaxed', weight: '50 m', eta: '6 MINS', price: 125, originalPrice: 150, discount: '16% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Infections & First Aid': [
      ProductModel(id: 'hp_fa1', name: 'Handyplast Waterproof Washproof Bandages', weight: '10 Strips', eta: '6 MINS', price: 30, originalPrice: 35, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_fa2', name: 'Dettol Antiseptic Liquid Bottle', weight: '250 ml', eta: '6 MINS', price: 125, originalPrice: 140, discount: '10% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_fa3', name: 'Savlon Antiseptic Disinfectant Liquid', weight: '500 ml', eta: '6 MINS', price: 180, originalPrice: 210, discount: '14% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_fa4', name: 'Hansaplast Regular Fabric Bandages Pack', weight: '20 Strips', eta: '6 MINS', price: 50, originalPrice: 60, discount: '16% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Immunity & Energy': [
      ProductModel(id: 'hp_ie1', name: 'Rasayanam Shilajit Gold Resin For Strength & Muscle', weight: '20 g', eta: '6 MINS', price: 1299, originalPrice: 1499, discount: '13% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ie2', name: 'The Vital Co Ashwagandha Powder', weight: '100 g', eta: '6 MINS', price: 599, originalPrice: 699, discount: '14% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ie3', name: 'Kapiva Him Foods Shilajit Gold Resin', weight: '20 g', eta: '6 MINS', price: 1399, originalPrice: 1549, discount: '9% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ie4', name: 'Honitus Hot Sip Ayurvedic Kaadha Sachets', weight: '7 pieces', eta: '6 MINS', price: 76, originalPrice: 84, discount: '9% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Gummies': [
      ProductModel(id: 'hp_gm1', name: 'Man Matters Biotin Hair Gummies | No Added Sugar', weight: '30 Gummies', eta: '6 MINS', price: 549, originalPrice: 650, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_gm2', name: 'What\'s Up Wellness Natural Biotin Gummies', weight: '30 pieces', eta: '6 MINS', price: 622, originalPrice: 799, discount: '22% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_gm3', name: 'Bodywise Multivitamin Gummies For Women', weight: '30 Gummies', eta: '6 MINS', price: 499, originalPrice: 599, discount: '16% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_gm4', name: 'Power Gummies Jawdropper Skin Vitamin Gummies', weight: '30 Gummies', eta: '6 MINS', price: 650, originalPrice: 800, discount: '18% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Heart & Blood Care': [
      ProductModel(id: 'hp_hb1', name: 'Saffola Gold Omega 3 Heart Care Oil', weight: '1 Litre', eta: '6 MINS', price: 195, originalPrice: 230, discount: '15% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_hb2', name: 'Organic India Flaxseed Oil Capsules', weight: '60 Capsules', eta: '6 MINS', price: 345, originalPrice: 395, discount: '12% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_hb3', name: 'True Basics Omega 3 Fish Oil Triple Strength', weight: '60 Capsules', eta: '6 MINS', price: 899, originalPrice: 1099, discount: '18% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_hb4', name: 'Kapiva Garlic Juice Pure Heart Support', weight: '500 ml', eta: '6 MINS', price: 299, originalPrice: 350, discount: '14% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Weight Management': [
      ProductModel(id: 'hp_wm1', name: 'The Baker\'s Dozen Elaichi Rusk, High Protein', weight: '80 g', eta: '6 MINS', price: 35, originalPrice: 40, discount: '12% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_wm2', name: 'Kellogg\'s Muesli 0% Added Sugar, High Protein', weight: '500 g', eta: '6 MINS', price: 247, originalPrice: 370, discount: '33% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_wm3', name: 'Supreme Harvest Cashew Split', weight: '100 g', eta: '6 MINS', price: 95, originalPrice: 120, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_wm4', name: 'Quaker Oats World\'s No.1 Oats Brand High Protein', weight: '400 g', eta: '6 MINS', price: 110, originalPrice: 130, discount: '15% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Superfoods': [
      ProductModel(id: 'hp_sf1', name: 'Kapiva Amla Juice Pure Cold Pressed', weight: '1 Litre', eta: '6 MINS', price: 299, originalPrice: 350, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_sf2', name: 'Organic India Wheatgrass Powder', weight: '100 g', eta: '6 MINS', price: 220, originalPrice: 260, discount: '15% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_sf3', name: 'True Elements Chia Seeds Raw Superfood', weight: '250 g', eta: '6 MINS', price: 180, originalPrice: 225, discount: '20% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_sf4', name: 'Saffola FITTIFY Moringa Superfood Green Coffee', weight: '30 Sachets', eta: '6 MINS', price: 280, originalPrice: 350, discount: '20% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],
    'Allergy, Cough & Cold': [
      ProductModel(id: 'hp_ac1', name: 'Dabur Honitus Herbal Cough Syrup', weight: '100 ml', eta: '6 MINS', price: 95, originalPrice: 110, discount: '13% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ac2', name: 'Vicks Vaporub Fast Relief Balm', weight: '50 g', eta: '6 MINS', price: 155, originalPrice: 175, discount: '11% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ac3', name: 'Cofsils Lemon Lozenges Pack', weight: '10 Lozenges', eta: '6 MINS', price: 30, originalPrice: 35, discount: '14% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
      ProductModel(id: 'hp_ac4', name: 'Vicks Inhaler Portable Relief', weight: '0.5 ml', eta: '6 MINS', price: 65, originalPrice: 70, discount: '7% OFF', image: 'https://pngimg.com/uploads/pills/pills_PNG98.png'),
    ],

    // =========================================================================
    // 7. BABY CARE CATALOG
    // =========================================================================
    'Baby Diapers': [
      ProductModel(id: 'bc_bd1', name: 'Huggies Natural Soft Premium Pant Style Baby Diaper (Large)', weight: '50 Pieces', eta: '6 MINS', price: 777, originalPrice: 1299, discount: '40% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bd2', name: 'Huggies Natural Soft Premium Pant Style Baby Diaper (Medium)', weight: '60 Pieces', eta: '6 MINS', price: 747, originalPrice: 1299, discount: '42% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bd3', name: 'Pampers Premium Care Pants L 88', weight: '88 Pieces', eta: '6 MINS', price: 2393, originalPrice: 2849, discount: '16% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bd4', name: 'Pampers Premium Care Pants L 44 | No Marks Design', weight: '44 Pieces', eta: '6 MINS', price: 1049, originalPrice: 1499, discount: '30% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Food and Cereals': [
      ProductModel(id: 'bc_bf1', name: 'Nestle Ceregrow Multigrain Milk & Fruits Cereal', weight: '300 g', eta: '6 MINS', price: 268, originalPrice: 299, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bf2', name: 'Nestle Lactogrow Nutritious Milk Drink For Growing Children', weight: '400 g', eta: '6 MINS', price: 337, originalPrice: 375, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bf3', name: 'Nestlé CERELAC Wheat Apple Carrot Baby Food Cereal', weight: '300 g', eta: '6 MINS', price: 260, originalPrice: 290, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bf4', name: 'Slurrp Farm Fruit and Vegetable Teething Puffs Combo', weight: '45 g', eta: '6 MINS', price: 147, originalPrice: 165, discount: '11% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Bathing': [
      ProductModel(id: 'bc_bb1', name: 'Cetaphil Face and Body Baby Mild Bar (Shea Butter, Olive)', weight: '75 g', eta: '6 MINS', price: 191, originalPrice: 260, discount: '26% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bb2', name: 'Aveeno Baby Daily Moisture Wash & Shampoo (Oat)', weight: '354 ml', eta: '6 MINS', price: 685, originalPrice: 950, discount: '28% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bb3', name: 'Baby Sebamed Extra Soft Baby Wash', weight: '200 ml', eta: '6 MINS', price: 520, originalPrice: 590, discount: '11% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bb4', name: 'Johnson\'s Baby Shampoo', weight: '200 ml', eta: '6 MINS', price: 147, originalPrice: 240, discount: '38% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Wipes': [
      ProductModel(id: 'bc_bw1', name: 'Himalaya Gentle Baby Wipes Pack of 2', weight: '140 Wipes', eta: '6 MINS', price: 210, originalPrice: 280, discount: '25% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bw2', name: 'Johnson\'s Baby Skincare Wipes Lid Pack', weight: '80 Wipes', eta: '6 MINS', price: 185, originalPrice: 220, discount: '15% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bw3', name: 'Pampers Fresh Clean Baby Wipes', weight: '64 Wipes', eta: '6 MINS', price: 160, originalPrice: 199, discount: '19% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bw4', name: 'Mother Sparsh 99% Pure Water Baby Wipes', weight: '72 Wipes', eta: '6 MINS', price: 225, originalPrice: 299, discount: '24% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Cream & Lotion': [
      ProductModel(id: 'bc_bl1', name: 'Himalaya Baby Derma Cream With Pure Cow Ghee', weight: '50 g', eta: '6 MINS', price: 112, originalPrice: 125, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bl2', name: 'Atogla Baby Lotion 200ml', weight: '200 ml', eta: '6 MINS', price: 625, originalPrice: 666, discount: '6% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bl3', name: 'Mother Sparsh Milky Soft Baby Lotion - 400ml', weight: '400 ml', eta: '6 MINS', price: 235, originalPrice: 449, discount: '47% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bl4', name: 'Johnson & Johnson Baby Lotion (Soft Skin, All Day Long)', weight: '200 ml', eta: '6 MINS', price: 201, originalPrice: 230, discount: '12% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Gifts & More': [
      ProductModel(id: 'bc_gm1', name: 'Himalaya Baby Care Gift Basket Pack', weight: '1 Kit', eta: '6 MINS', price: 499, originalPrice: 650, discount: '23% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_gm2', name: 'Johnson\'s Baby Essential Gift Box Set', weight: '1 Kit', eta: '6 MINS', price: 550, originalPrice: 700, discount: '21% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_gm3', name: 'Sebamed Baby Welcome Gift Kit', weight: '1 Kit', eta: '6 MINS', price: 890, originalPrice: 1050, discount: '15% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_gm4', name: 'Mamaearth Welcome Baby Essential Gift Box', weight: '1 Kit', eta: '6 MINS', price: 799, originalPrice: 999, discount: '20% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Feeding and Teething': [
      ProductModel(id: 'bc_ft1', name: 'Philips Avent Electric Breast Pump | No.1 Brand', weight: '1 Piece', eta: '6 MINS', price: 4885, originalPrice: 7495, discount: '34% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ft2', name: 'Philips Avent Baby Bottle Sterilizer', weight: '1 Piece', eta: '6 MINS', price: 3199, originalPrice: 4995, discount: '35% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ft3', name: 'Philips Natural Response Baby Bottle- 260ml', weight: '1 Piece', eta: '6 MINS', price: 585, originalPrice: 650, discount: '10% OFF', badge: 'TRENDING', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ft4', name: 'Philips Avent Natural Response Baby Feeding Bottle | 125ml', weight: '1 Piece', eta: '6 MINS', price: 490, originalPrice: 550, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Oil and Talc': [
      ProductModel(id: 'bc_ot1', name: 'Cetaphil Baby Massage Oil', weight: '200 ml', eta: '6 MINS', price: 638, originalPrice: 799, discount: '20% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ot2', name: 'Johnson\'s Baby Powder Natural 400G', weight: '400 g', eta: '6 MINS', price: 281, originalPrice: 375, discount: '25% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ot3', name: 'Johnson & Johnson Baby Oil (Vitamin-E)', weight: '200 ml', eta: '6 MINS', price: 232, originalPrice: 270, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_ot4', name: 'Mee mee soft feel powder puff with box holder container', weight: '1 Piece', eta: '6 MINS', price: 224, originalPrice: 299, discount: '25% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Hygiene': [
      ProductModel(id: 'bc_bh1', name: 'Chicco Baby Liquid Laundry Detergent', weight: '1 Litre', eta: '6 MINS', price: 425, originalPrice: 499, discount: '14% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bh2', name: 'Pigeon Baby Bottle Cleanser Liquid', weight: '500 ml', eta: '6 MINS', price: 310, originalPrice: 375, discount: '17% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bh3', name: 'Mee Mee Anti-Bacterial Baby Liquid Cleanser', weight: '1.2 Litre', eta: '6 MINS', price: 380, originalPrice: 475, discount: '20% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bh4', name: 'Mother Sparsh Plant Powered Baby Laundry Detergent', weight: '1 Litre', eta: '6 MINS', price: 399, originalPrice: 499, discount: '20% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Books and Toys': [
      ProductModel(id: 'bc_bt1', name: 'Fisher-Price High Contrast Black & White Flash Cards', weight: '1 Pack', eta: '6 MINS', price: 299, originalPrice: 399, discount: '25% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bt2', name: 'Shumee Soft Cloth Rattles Set For Infants', weight: '2 Pieces', eta: '6 MINS', price: 350, originalPrice: 450, discount: '22% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bt3', name: 'First 100 Board Books Set For Toddlers', weight: '4 Books', eta: '6 MINS', price: 280, originalPrice: 399, discount: '29% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_bt4', name: 'Skillmatics Soft Animal Touch & Feel Book', weight: '1 Book', eta: '6 MINS', price: 320, originalPrice: 420, discount: '23% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
    'Baby Oral Care': [
      ProductModel(id: 'bc_boc1', name: 'Mee Mee Gentle Silicone Finger Toothbrush', weight: '1 Piece', eta: '6 MINS', price: 95, originalPrice: 120, discount: '20% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_boc2', name: 'Chicco Fluoride Free Apple Banana Toothpaste', weight: '50 g', eta: '6 MINS', price: 165, originalPrice: 199, discount: '17% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_boc3', name: 'Colgate Kids Toothbrush Extra Soft 2+ Years', weight: '1 Piece', eta: '6 MINS', price: 45, originalPrice: 50, discount: '10% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
      ProductModel(id: 'bc_boc4', name: 'Pigeon Training Toothbrush Lesson 1-2-3 Set', weight: '3 Pieces', eta: '6 MINS', price: 290, originalPrice: 350, discount: '17% OFF', image: 'https://pngimg.com/uploads/baby/baby_PNG52680.png'),
    ],
  };
}