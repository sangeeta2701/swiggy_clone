import '../models/product_model.dart';

class GroceryMockData {
  static const Map<String, List<CategoryModel>> categorySubCategories = {
    // --- 1. ATTA, RICE & DAL ---
    'Atta, Rice & Dal': [
      CategoryModel(name: 'Atta', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      CategoryModel(name: 'Rice', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      CategoryModel(name: 'Toor, Moong & Dal', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'High Protein Atta', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      CategoryModel(name: 'Basmati Rice', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      CategoryModel(name: 'Besan, Sooji & Rawa', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Rajma, Chana & Pulses', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Poha & Puffed Rice', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      CategoryModel(name: 'Soya Chunk & Granules', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],

    // --- 2. MASALAS & SPICES / MASALAS ---
    'Masalas & Spices': [
      CategoryModel(name: 'Powdered Spices', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Whole Spices', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Cold Grind', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Sugar and Jaggery', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Papad & Fryums', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Ready Masala', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Salt', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Paste and Puree', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Pickles & Chutney', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Herbs & Seasoning', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Masalas': [
      CategoryModel(name: 'Powdered Spices', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Whole Spices', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Cold Grind', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Sugar and Jaggery', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Papad & Fryums', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Ready Masala', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Salt', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Paste and Puree', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Pickles & Chutney', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      CategoryModel(name: 'Herbs & Seasoning', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],

    // --- 3. OILS & GHEE ---
    'Oils & Ghee': [
      CategoryModel(name: 'Sunflower & Other Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Mustard Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Cold Pressed', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Ghee', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Soyabean Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Oils and Ghee': [
      CategoryModel(name: 'Sunflower & Other Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Mustard Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Cold Pressed', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Ghee', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      CategoryModel(name: 'Soyabean Oils', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],

    // --- 4. CEREALS & BREAKFAST ---
    'Cereals & Breakfast': [
      CategoryModel(name: 'Ready Mixes', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Peanut Butters', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Chocolate Spreads', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Masala Oats', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Jams', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Juices & Fruit Drinks', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      CategoryModel(name: 'Mayo & Spreads', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Hot Beverages', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Seeds and trail Mixes', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Cereals and Breakfast': [
      CategoryModel(name: 'Ready Mixes', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Peanut Butters', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Chocolate Spreads', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Masala Oats', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Jams', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Juices & Fruit Drinks', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      CategoryModel(name: 'Mayo & Spreads', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      CategoryModel(name: 'Hot Beverages', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      CategoryModel(name: 'Seeds and trail Mixes', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
  };

  // Products mapped by subcategory
  static const Map<String, List<ProductModel>> catalogProducts = {
    // --- ATTA, RICE & DAL ---
    'Atta': [
      ProductModel(id: 'gk_1', name: 'Aashirvaad Superior MP Atta, 100% Whole Wheat Flour', weight: '5 kg', eta: '12 MINS', price: 254, originalPrice: 310, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://media-dev.bazaar5.com/media/product/95/6306/b0140pr9s6-aashirvaad-superior-mp-atta-5kg-pack-0-78453b42.jpg'),
      ProductModel(id: 'gk_2', name: 'ITC Right Shift Multigrain+ Atta 1kg | 30% MORE Protein', weight: '1 kg', eta: '12 MINS', price: 51, originalPrice: 95, discount: '46% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFsEDz1WEIimQxHDXidXfM9HVfVPR1YXITN8ap3I6Dtg&s=10'),
      ProductModel(id: 'gk_3', name: 'Aashirvaad Atta High Protein', weight: '1 kg', eta: '12 MINS', price: 78, originalPrice: 99, discount: '21% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmIHnf9Ex3b1bAEgf92xbbisIP6hZDq0PcQIbSAC24ug&s=10'),
      ProductModel(id: 'gk_4', name: 'Fortune Chakki Fresh Atta', weight: '5 kg', eta: '12 MINS', price: 228, originalPrice: 285, discount: '20% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk90js2WF4xB-XYt-T78cDK9TlDoKJxfFiEVNXYCJieQ&s'),
      ProductModel(id: 'gk_5', name: 'Pillsbury Chakki Fresh Atta', weight: '5 kg', eta: '12 MINS', price: 235, originalPrice: 290, discount: '18% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      ProductModel(id: 'gk_6', name: 'Organic Tattva Whole Wheat Atta', weight: '1 kg', eta: '12 MINS', price: 68, originalPrice: 85, discount: '20% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
    ],
    'Rice': [
      ProductModel(id: 'rc_1', name: 'Sona Masoori Raw Rice Premium Quality', weight: '5 kg', eta: '12 MINS', price: 345, originalPrice: 420, discount: '17% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPeXAn_zDMECti-DOUus1UxkAnSL7ATmYuV_swf9JcsA&s=10'),
      ProductModel(id: 'rc_2', name: 'Bullet Sona Masoori Boiled Rice', weight: '10 kg', eta: '12 MINS', price: 680, originalPrice: 800, discount: '15% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSoDMUTpnbOZsTNwtuaSu4BttrxUIq9pHvX3aOSK8T_A&s=10'),
      ProductModel(id: 'rc_3', name: 'Fortune Everyday Full Grain Basmati Rice', weight: '1 kg', eta: '12 MINS', price: 110, originalPrice: 150, discount: '26% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh5cfpUAXRgFKuI2nVZdb4cBPpDB-jwGLEiqATgueexA&s=10'),
      ProductModel(id: 'rc_4', name: 'Daawat Rozana Super Basmati Rice', weight: '5 kg', eta: '12 MINS', price: 380, originalPrice: 499, discount: '23% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgYBK5TS07FhmB7hj42fL5V4Iwzcy1MREsNYmkr7mP4g&s=10'),
    ],
    'Toor, Moong & Dal': [
      ProductModel(id: 'dl_1', name: 'Tata Sampann Unpolished Toor Dal', weight: '1 kg', eta: '12 MINS', price: 168, originalPrice: 195, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSz7QGw6lzZSHPOQ_jXyCxNUIK4jANTy5SJpVDLngRGw&s=10'),
      ProductModel(id: 'dl_2', name: 'Fortune Moong Dal Yellow Split', weight: '1 kg', eta: '12 MINS', price: 145, originalPrice: 175, discount: '17% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTbg5JpwHIJw7qNemXH_DsyzqhG02zKLqNnDMausIGA&s'),
    ],
    'High Protein Atta': [
      ProductModel(id: 'hp_1', name: 'ITC Right Shift Multigrain+ High Protein Atta', weight: '5 kg', eta: '12 MINS', price: 285, originalPrice: 340, discount: '16% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYECbDrovSHspOkzoN0hL08Lv7-vhLi7Vj5YlkhLg15g&s=10'),
      ProductModel(id: 'hp_2', name: 'Aashirvaad Atta High Protein 30% More Protein', weight: '1 kg', eta: '12 MINS', price: 78, originalPrice: 99, discount: '21% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmIHnf9Ex3b1bAEgf92xbbisIP6hZDq0PcQIbSAC24ug&s=10'),
    ],
    'Basmati Rice': [
      ProductModel(id: 'br_1', name: 'India Gate Basmati Rice Classic', weight: '1 kg', eta: '12 MINS', price: 135, originalPrice: 165, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'br_2', name: 'Daawat Rozana Super Basmati', weight: '5 kg', eta: '12 MINS', price: 380, originalPrice: 499, discount: '23% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgYBK5TS07FhmB7hj42fL5V4Iwzcy1MREsNYmkr7mP4g&s=10'),
    ],
    'Besan, Sooji & Rawa': [
      ProductModel(id: 'bs_1', name: 'Fortune Besan Flour (Kadale hittu)', weight: '500 g', eta: '12 MINS', price: 64, originalPrice: 85, discount: '24% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxf-FsAv7RYr_56pYaQitaQjfm6h7KTeVznmTaQR4JiA&s=10'),
      ProductModel(id: 'bs_2', name: 'Supreme Harvest Suji Rawa (Semolina)', weight: '1 kg', eta: '12 MINS', price: 52, originalPrice: 80, discount: '35% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1x-Oxcm4I_OUSn1a_pRa-jYw7-XyeG75SspFHdXVF_A&s'),
    ],
    'Rajma, Chana & Pulses': [
      ProductModel(id: 'rj_1', name: 'Tata Sampann Rajma Chitra', weight: '1 kg', eta: '12 MINS', price: 175, originalPrice: 205, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-HeZk-YU4p_iFQmQSy9ffJfdw5IjQQvYcCNxH8-nzEg&s=10'),
      ProductModel(id: 'rj_2', name: 'Fortune Kabuli Chana (White Chickpeas)', weight: '1 kg', eta: '12 MINS', price: 128, originalPrice: 155, discount: '17% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ29nXjij2-IKbfa2JBrKhqTijtDeNcC0khaFM-ZCoUg&s=10'),
    ],
    'Poha & Puffed Rice': [
      ProductModel(id: 'ph_1', name: 'Bansi Poha Thick (Chivda Rice Flakes)', weight: '1 kg', eta: '12 MINS', price: 62, originalPrice: 75, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTErynqYOgFZxwAPP9p3EgY3ZOpbJT9PEmKPHTOiyWqZQ&s=10'),
    ],
    'Soya Chunk & Granules': [
      ProductModel(id: 'sy_1', name: 'Aashirvaad Soya Chunks High Protein', weight: '200 g', eta: '12 MINS', price: 39, originalPrice: 47, discount: '17% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtQFqqmZwuqE6GlPencMDt4z7yg4Hr7ULKwg7S5WW5eg&s=10'),
    ],

    // --- MASALAS & SPICES ---
    'Powdered Spices': [
      ProductModel(id: 'ms_p1', name: 'Supreme Harvest Red Chilli Powder', weight: '100 g', eta: '10 MINS', price: 47, originalPrice: 91, discount: '48% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p2', name: 'Khetika Stone Ground Coriander Powder', weight: '400 g', eta: '10 MINS', price: 101, originalPrice: 170, discount: '40% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Ready Masala': [
      ProductModel(id: 'rm_1', name: 'Eastern Mutton Masala Powder', weight: '100 g', eta: '10 MINS', price: 62, originalPrice: 69, discount: '10% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_2', name: 'Melam Chicken 65 Masala', weight: '50 g', eta: '10 MINS', price: 21, originalPrice: 28, discount: '25% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Paste and Puree': [
      ProductModel(id: 'pp_1', name: 'CURRYiT Preservative Free Ginger Paste', weight: '150 g', eta: '10 MINS', price: 64, originalPrice: 89, discount: '28% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_2', name: 'Mother\'s Recipe Ginger Garlic Paste', weight: '200 g', eta: '10 MINS', price: 38, originalPrice: 47, discount: '19% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Pickles & Chutney': [
      ProductModel(id: 'pk_1', name: 'Brahmins Tender Mango Pickle', weight: '400 g', eta: '10 MINS', price: 264, originalPrice: 384, discount: '31% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_2', name: 'ADF Soul Garlic Chutney', weight: '275 g', eta: '10 MINS', price: 200, originalPrice: 230, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],

    // --- OILS & GHEE ---
    'Sunflower & Other Oils': [
      ProductModel(id: 'og_1', name: 'Sundrop Superlite Advanced Sunflower Oil Saver Pack', weight: '1.7 kg', eta: '10 MINS', price: 449, originalPrice: 460, discount: '2% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_2', name: 'Gold Winner Refined Sunflower Oil', weight: '1 Litre', eta: '10 MINS', price: 174, originalPrice: 213, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Mustard Oils': [
      ProductModel(id: 'mo_1', name: 'TIME FOR ORGANICS TFO Organic Cold Pressed Mustard Oil', weight: '2 Litre', eta: '10 MINS', price: 738, originalPrice: 793, discount: '6% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_2', name: 'Fortune Premio Cold Pressed Mustard Oil', weight: '1 Litre', eta: '10 MINS', price: 331, originalPrice: 425, discount: '22% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],

    // --- CEREALS & BREAKFAST ---
    'Chocolate Spreads': [
      ProductModel(id: 'cs_sp1', name: 'Gladful Zero Palm Oil Hazelnut Almond Spread', weight: '300 g', eta: '10 MINS', price: 337, originalPrice: 499, discount: '32% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp2', name: 'NO!CE Chocolate Peanut Butter | 22% Protein', weight: '250 g', eta: '10 MINS', price: 149, originalPrice: 180, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Masala Oats': [
      ProductModel(id: 'mo_s1', name: 'Saffola Veggie Twist Masala Oats', weight: '38 g', eta: '10 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s2', name: 'Saffola Classic Masala Oats', weight: '38 g', eta: '10 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Jams': [
      ProductModel(id: 'jm_1', name: 'NO!CE Apple Pineapple Jam (80% fruit & No Preservatives)', weight: '125 g', eta: '10 MINS', price: 99, originalPrice: 169, discount: '41% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_2', name: 'Kissan Mixed Fruit Jam', weight: '90 g', eta: '10 MINS', price: 25, originalPrice: 25, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Hot Beverages': [
      ProductModel(id: 'hb_1', name: 'Tulsi Gold Tea CTC Leaf | Premium Chai Patti', weight: '250 g', eta: '10 MINS', price: 121, originalPrice: 135, discount: '10% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_2', name: 'Bournvita Chocolate Nutrition Drink Jar', weight: '500 g', eta: '10 MINS', price: 255, originalPrice: 263, discount: '3% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
  };
}