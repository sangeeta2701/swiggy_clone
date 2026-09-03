import '../models/product_model.dart';

class GroceryMockData {
  // Map parent category titles to their respective sidebar subcategories
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

  // Catalog products mapped by subcategory
  static const Map<String, List<ProductModel>> catalogProducts = {
    // -------------------------------------------------------------------------
    // 1. ATTA, RICE & DAL
    // -------------------------------------------------------------------------
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
      ProductModel(id: 'rc_5', name: 'India Gate Feast Rozana Basmati Rice', weight: '1 kg', eta: '12 MINS', price: 95, originalPrice: 130, discount: '26% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'rc_6', name: 'Kolam Rice Polished', weight: '5 kg', eta: '12 MINS', price: 360, originalPrice: 430, discount: '16% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
    ],
    'Toor, Moong & Dal': [
      ProductModel(id: 'dl_1', name: 'Tata Sampann Unpolished Toor Dal', weight: '1 kg', eta: '12 MINS', price: 168, originalPrice: 195, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSz7QGw6lzZSHPOQ_jXyCxNUIK4jANTy5SJpVDLngRGw&s=10'),
      ProductModel(id: 'dl_2', name: 'Fortune Moong Dal Yellow Split', weight: '1 kg', eta: '12 MINS', price: 145, originalPrice: 175, discount: '17% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrTbg5JpwHIJw7qNemXH_DsyzqhG02zKLqNnDMausIGA&s'),
      ProductModel(id: 'dl_3', name: 'Organic Tattva Toor Dal', weight: '500 g', eta: '12 MINS', price: 89, originalPrice: 105, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'dl_4', name: '24 Mantra Organic Moong Dal Split', weight: '1 kg', eta: '12 MINS', price: 158, originalPrice: 190, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'dl_5', name: 'Tata Sampann Unpolished Chana Dal', weight: '1 kg', eta: '12 MINS', price: 110, originalPrice: 130, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'dl_6', name: 'Fortune Masoor Dal Whole Black', weight: '500 g', eta: '12 MINS', price: 62, originalPrice: 75, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'High Protein Atta': [
      ProductModel(id: 'hp_1', name: 'ITC Right Shift Multigrain+ High Protein Atta', weight: '5 kg', eta: '12 MINS', price: 285, originalPrice: 340, discount: '16% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYECbDrovSHspOkzoN0hL08Lv7-vhLi7Vj5YlkhLg15g&s=10'),
      ProductModel(id: 'hp_2', name: 'Aashirvaad Atta High Protein 30% More Protein', weight: '1 kg', eta: '12 MINS', price: 78, originalPrice: 99, discount: '21% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmIHnf9Ex3b1bAEgf92xbbisIP6hZDq0PcQIbSAC24ug&s=10'),
      ProductModel(id: 'hp_3', name: 'Pillsbury Protein Rich Atta', weight: '5 kg', eta: '12 MINS', price: 265, originalPrice: 320, discount: '17% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      ProductModel(id: 'hp_4', name: 'Nourish You Protein+ Atta', weight: '1 kg', eta: '12 MINS', price: 95, originalPrice: 120, discount: '21% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      ProductModel(id: 'hp_5', name: 'Natureland Organics High Protein Atta', weight: '1 kg', eta: '12 MINS', price: 85, originalPrice: 100, discount: '15% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
      ProductModel(id: 'hp_6', name: 'Pro Nature Organic Protein Rich Wheat Flour', weight: '5 kg', eta: '12 MINS', price: 290, originalPrice: 350, discount: '17% OFF', image: 'https://pngimg.com/uploads/wheat/wheat_PNG10.png'),
    ],
    'Basmati Rice': [
      ProductModel(id: 'br_1', name: 'India Gate Basmati Rice Classic', weight: '1 kg', eta: '12 MINS', price: 135, originalPrice: 165, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'br_2', name: 'Daawat Rozana Super Basmati', weight: '5 kg', eta: '12 MINS', price: 380, originalPrice: 499, discount: '23% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgYBK5TS07FhmB7hj42fL5V4Iwzcy1MREsNYmkr7mP4g&s=10'),
      ProductModel(id: 'br_3', name: 'Fortune Everyday Basmati Rice', weight: '1 kg', eta: '12 MINS', price: 110, originalPrice: 150, discount: '26% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'br_4', name: 'Kohinoor Super Silver Aged Basmati', weight: '1 kg', eta: '12 MINS', price: 165, originalPrice: 210, discount: '21% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'br_5', name: 'Daawat Biryani Basmati Rice Extra Long', weight: '1 kg', eta: '12 MINS', price: 220, originalPrice: 260, discount: '15% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'br_6', name: 'India Gate Super Premium Basmati Rice', weight: '5 kg', eta: '12 MINS', price: 750, originalPrice: 890, discount: '15% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
    ],
    'Besan, Sooji & Rawa': [
      ProductModel(id: 'bs_1', name: 'Fortune Besan Flour (Kadale hittu)', weight: '500 g', eta: '12 MINS', price: 64, originalPrice: 85, discount: '24% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxf-FsAv7RYr_56pYaQitaQjfm6h7KTeVznmTaQR4JiA&s=10'),
      ProductModel(id: 'bs_2', name: 'Supreme Harvest Suji Rawa (Semolina)', weight: '1 kg', eta: '12 MINS', price: 52, originalPrice: 80, discount: '35% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1x-Oxcm4I_OUSn1a_pRa-jYw7-XyeG75SspFHdXVF_A&s'),
      ProductModel(id: 'bs_3', name: 'Aashirvaad Bansi Rawa Fine Quality', weight: '1 kg', eta: '12 MINS', price: 69, originalPrice: 76, discount: '9% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'bs_4', name: 'MTR Roasted Upma Rawa Granules', weight: '500 g', eta: '12 MINS', price: 45, originalPrice: 55, discount: '18% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'bs_5', name: 'Chakki Fresh Besan Fine Quality', weight: '1 kg', eta: '12 MINS', price: 118, originalPrice: 145, discount: '18% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'bs_6', name: 'Idli Rawa Premium Coarse Granules', weight: '1 kg', eta: '12 MINS', price: 58, originalPrice: 72, discount: '19% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Rajma, Chana & Pulses': [
      ProductModel(id: 'rj_1', name: 'Tata Sampann Rajma Chitra Premium', weight: '1 kg', eta: '12 MINS', price: 175, originalPrice: 205, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-HeZk-YU4p_iFQmQSy9ffJfdw5IjQQvYcCNxH8-nzEg&s=10'),
      ProductModel(id: 'rj_2', name: 'Fortune Kabuli Chana (White Chickpeas)', weight: '1 kg', eta: '12 MINS', price: 128, originalPrice: 155, discount: '17% OFF', badge: 'Price Drop', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ29nXjij2-IKbfa2JBrKhqTijtDeNcC0khaFM-ZCoUg&s=10'),
      ProductModel(id: 'rj_3', name: 'Organic Tattva Kala Chana Organic', weight: '500 g', eta: '12 MINS', price: 68, originalPrice: 82, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rj_4', name: '24 Mantra Organic Red Rajma', weight: '1 kg', eta: '12 MINS', price: 195, originalPrice: 235, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rj_5', name: 'Tata Sampann Green Moong Whole', weight: '500 g', eta: '12 MINS', price: 78, originalPrice: 90, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rj_6', name: 'Fortune Masoor Whole Black Dal', weight: '1 kg', eta: '12 MINS', price: 115, originalPrice: 140, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Poha & Puffed Rice': [
      ProductModel(id: 'ph_1', name: 'Bansi Poha Thick (Chivda Rice Flakes)', weight: '1 kg', eta: '12 MINS', price: 62, originalPrice: 75, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTErynqYOgFZxwAPP9p3EgY3ZOpbJT9PEmKPHTOiyWqZQ&s=10'),
      ProductModel(id: 'ph_2', name: 'Nirapara Thin Poha Smooth', weight: '500 g', eta: '12 MINS', price: 35, originalPrice: 45, discount: '22% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'ph_3', name: 'Puffed Rice (Murmura) Premium Crispy', weight: '500 g', eta: '12 MINS', price: 32, originalPrice: 40, discount: '20% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'ph_4', name: 'Red Poha (Rice Flakes) Healthy Choice', weight: '500 g', eta: '12 MINS', price: 48, originalPrice: 58, discount: '17% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'ph_5', name: 'Tata Sampann Organic Thick Poha', weight: '500 g', eta: '12 MINS', price: 55, originalPrice: 65, discount: '15% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
      ProductModel(id: 'ph_6', name: 'MTR Instant Poha Mix Classic', weight: '160 g', eta: '12 MINS', price: 25, originalPrice: 30, discount: '16% OFF', image: 'https://pngimg.com/uploads/rice/rice_PNG12.png'),
    ],
    'Soya Chunk & Granules': [
      ProductModel(id: 'sy_1', name: 'Aashirvaad Soya Chunks High Protein', weight: '200 g', eta: '12 MINS', price: 39, originalPrice: 47, discount: '17% OFF', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtQFqqmZwuqE6GlPencMDt4z7yg4Hr7ULKwg7S5WW5eg&s=10'),
      ProductModel(id: 'sy_2', name: 'Fortune Soya Chunk (High on Protein)', weight: '200 g', eta: '12 MINS', price: 46, originalPrice: 50, discount: '8% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'sy_3', name: 'Supreme Harvest Soya Chunks 53% Protein', weight: '200 g', eta: '12 MINS', price: 32, originalPrice: 55, discount: '41% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'sy_4', name: 'Aashirvaad Mini Soya Chunks', weight: '200 g', eta: '12 MINS', price: 39, originalPrice: 47, discount: '17% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'sy_5', name: 'Nutrela Soya Granules High Protein', weight: '200 g', eta: '12 MINS', price: 48, originalPrice: 55, discount: '12% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'sy_6', name: 'Soya Mini Nuggets Pack Fine', weight: '200 g', eta: '12 MINS', price: 35, originalPrice: 42, discount: '16% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],

    // -------------------------------------------------------------------------
    // 2. MASALAS & SPICES
    // -------------------------------------------------------------------------
    'Powdered Spices': [
      ProductModel(id: 'ms_p1', name: 'Supreme Harvest Red Chilli Powder', weight: '100 g', eta: '10 MINS', price: 47, originalPrice: 91, discount: '48% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p2', name: 'Khetika Stone Ground Coriander Powder', weight: '400 g', eta: '10 MINS', price: 101, originalPrice: 170, discount: '40% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p3', name: 'Everest Tikhalal Hot Red Chilli Powder', weight: '200 g', eta: '10 MINS', price: 85, originalPrice: 100, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p4', name: 'Catch Turmeric Powder (Haldi)', weight: '200 g', eta: '10 MINS', price: 52, originalPrice: 65, discount: '20% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p5', name: 'MDH Kashmiri Mirch Powder', weight: '100 g', eta: '10 MINS', price: 78, originalPrice: 90, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ms_p6', name: 'Tata Sampann Black Pepper Powder', weight: '100 g', eta: '10 MINS', price: 115, originalPrice: 135, discount: '14% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Whole Spices': [
      ProductModel(id: 'ws_1', name: 'Catch Whole Cumin Seeds (Jeera)', weight: '100 g', eta: '10 MINS', price: 65, originalPrice: 80, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ws_2', name: 'Tata Sampann Whole Green Cardamom (Elaichi)', weight: '50 g', eta: '10 MINS', price: 185, originalPrice: 220, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ws_3', name: 'Everest Whole Cloves (Laung)', weight: '50 g', eta: '10 MINS', price: 95, originalPrice: 115, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ws_4', name: 'Organic Tattva Whole Black Pepper', weight: '100 g', eta: '10 MINS', price: 120, originalPrice: 145, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ws_5', name: 'Catch Mustard Seeds (Rai)', weight: '200 g', eta: '10 MINS', price: 42, originalPrice: 50, discount: '16% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'ws_6', name: 'Supreme Harvest Cinnamon Sticks (Dalchini)', weight: '50 g', eta: '10 MINS', price: 58, originalPrice: 75, discount: '22% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Cold Grind': [
      ProductModel(id: 'cg_1', name: 'Mantra Cold Ground Red Chilli Powder', weight: '100 g', eta: '10 MINS', price: 68, originalPrice: 85, discount: '20% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'cg_2', name: 'Mantra Cold Ground Turmeric Powder', weight: '100 g', eta: '10 MINS', price: 58, originalPrice: 70, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'cg_3', name: 'Mantra Cold Ground Coriander Powder', weight: '200 g', eta: '10 MINS', price: 88, originalPrice: 110, discount: '20% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'cg_4', name: 'Mantra Cold Ground Garam Masala', weight: '100 g', eta: '10 MINS', price: 110, originalPrice: 135, discount: '18% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'cg_5', name: 'Mantra Cold Ground Cumin Powder', weight: '100 g', eta: '10 MINS', price: 92, originalPrice: 115, discount: '20% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'cg_6', name: 'Mantra Cold Ground Black Pepper', weight: '50 g', eta: '10 MINS', price: 75, originalPrice: 90, discount: '16% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Sugar and Jaggery': [
      ProductModel(id: 'sj_1', name: 'Madhur Pure & Hygienic Refined Sugar', weight: '1 kg', eta: '10 MINS', price: 58, originalPrice: 65, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'sj_2', name: 'Organic Tattva Organic Jaggery Powder', weight: '500 g', eta: '10 MINS', price: 65, originalPrice: 80, discount: '18% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'sj_3', name: 'Trust Classic Sulfur Free Sugar', weight: '1 kg', eta: '10 MINS', price: 62, originalPrice: 70, discount: '11% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'sj_4', name: '24 Mantra Organic Jaggery Block', weight: '500 g', eta: '10 MINS', price: 58, originalPrice: 72, discount: '19% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'sj_5', name: 'Parrys White Crystal Sugar', weight: '1 kg', eta: '10 MINS', price: 56, originalPrice: 62, discount: '9% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'sj_6', name: 'Nutriorg Organic Coconut Sugar', weight: '250 g', eta: '10 MINS', price: 185, originalPrice: 220, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Papad & Fryums': [
      ProductModel(id: 'pf_1', name: 'Lijjat Udad Dal Special Papad', weight: '200 g', eta: '10 MINS', price: 72, originalPrice: 80, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pf_2', name: 'Lijjat Garlic Flavoured Papad', weight: '200 g', eta: '10 MINS', price: 75, originalPrice: 85, discount: '11% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pf_3', name: 'Mother\'s Recipe Moong Dal Papad', weight: '200 g', eta: '10 MINS', price: 68, originalPrice: 78, discount: '12% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pf_4', name: 'Urban Platter Rice Fryums Wheels', weight: '200 g', eta: '10 MINS', price: 110, originalPrice: 135, discount: '18% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pf_5', name: 'Haldiram\'s Bikaner Papad', weight: '200 g', eta: '10 MINS', price: 65, originalPrice: 75, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pf_6', name: 'Aakash Potato Sabudana Wafers Papad', weight: '150 g', eta: '10 MINS', price: 55, originalPrice: 65, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Ready Masala': [
      ProductModel(id: 'rm_1', name: 'Eastern Mutton Masala Powder', weight: '100 g', eta: '10 MINS', price: 62, originalPrice: 69, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_2', name: 'Melam Chicken 65 Masala', weight: '50 g', eta: '10 MINS', price: 21, originalPrice: 28, discount: '25% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_3', name: 'Everest Garam Masala Powder', weight: '100 g', eta: '10 MINS', price: 82, originalPrice: 92, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_4', name: 'MDH Pav Bhaji Masala', weight: '100 g', eta: '10 MINS', price: 78, originalPrice: 88, discount: '11% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_5', name: 'Catch Chicken Masala Powder', weight: '100 g', eta: '10 MINS', price: 65, originalPrice: 75, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'rm_6', name: 'MTR Sambar Masala Powder', weight: '100 g', eta: '10 MINS', price: 58, originalPrice: 68, discount: '14% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Salt': [
      ProductModel(id: 'st_1', name: 'Tata Salt Vacuum Evaporated Iodised Salt', weight: '1 kg', eta: '10 MINS', price: 28, originalPrice: 28, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'st_2', name: 'Tata Salt Pink Salt Himalayan Rock Salt', weight: '1 kg', eta: '10 MINS', price: 115, originalPrice: 130, discount: '11% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'st_3', name: 'Aashirvaad Iodised Salt', weight: '1 kg', eta: '10 MINS', price: 25, originalPrice: 28, discount: '10% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'st_4', name: 'Catch Black Salt Sprinkler (Kala Namak)', weight: '200 g', eta: '10 MINS', price: 48, originalPrice: 55, discount: '12% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'st_5', name: 'Organic Tattva Himalayan Pink Rock Salt', weight: '500 g', eta: '10 MINS', price: 68, originalPrice: 80, discount: '15% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'st_6', name: 'Puro Healthy Salt Low Sodium', weight: '1 kg', eta: '10 MINS', price: 120, originalPrice: 140, discount: '14% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Paste and Puree': [
      ProductModel(id: 'pp_1', name: 'CURRYiT Preservative Free Ginger Paste', weight: '150 g', eta: '10 MINS', price: 64, originalPrice: 89, discount: '28% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_2', name: 'CURRYiT Dhaba Butter Masala Cooking Paste', weight: '120 g', eta: '10 MINS', price: 144, originalPrice: 149, discount: '3% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_3', name: 'NO!CE Fresh Ginger Garlic Paste', weight: '100 g', eta: '10 MINS', price: 49, originalPrice: 74, discount: '33% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_4', name: 'Mother\'s Recipe Ginger Garlic Paste', weight: '200 g', eta: '10 MINS', price: 38, originalPrice: 47, discount: '19% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_5', name: 'Dabur Hommade Tomato Puree', weight: '200 g', eta: '10 MINS', price: 28, originalPrice: 32, discount: '12% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pp_6', name: 'Kissan Tomato Puree Pack', weight: '200 g', eta: '10 MINS', price: 26, originalPrice: 30, discount: '13% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Pickles & Chutney': [
      ProductModel(id: 'pk_1', name: 'Brahmins Tender Mango Pickle', weight: '400 g', eta: '10 MINS', price: 264, originalPrice: 384, discount: '31% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_2', name: 'ADF Soul Garlic Chutney in Olive Oil', weight: '275 g', eta: '10 MINS', price: 200, originalPrice: 230, discount: '13% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_3', name: 'NO!CE Andhra Garlic Pickle (Homestyle)', weight: '200 g', eta: '10 MINS', price: 129, originalPrice: 179, discount: '27% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_4', name: 'NO!CE Andhra Avakaya Mango Pickle', weight: '200 g', eta: '10 MINS', price: 89, originalPrice: 179, discount: '50% OFF', badge: 'Price Drop', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_5', name: 'Mother\'s Recipe Mixed Pickle Jar', weight: '400 g', eta: '10 MINS', price: 110, originalPrice: 130, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'pk_6', name: 'Priya Lime Pickle With Garlic', weight: '300 g', eta: '10 MINS', price: 95, originalPrice: 115, discount: '17% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],
    'Herbs & Seasoning': [
      ProductModel(id: 'hs_1', name: 'Snapin Oregano Seasoning Sprinkler', weight: '50 g', eta: '10 MINS', price: 85, originalPrice: 99, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'hs_2', name: 'Keya Chilli Flakes Bottle', weight: '45 g', eta: '10 MINS', price: 79, originalPrice: 90, discount: '12% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'hs_3', name: 'Snapin Pizza Seasoning Bottle', weight: '55 g', eta: '10 MINS', price: 89, originalPrice: 99, discount: '10% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'hs_4', name: 'Urban Platter Dried Basil Leaves', weight: '30 g', eta: '10 MINS', price: 125, originalPrice: 150, discount: '16% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'hs_5', name: 'Keya Mixed Herbs Bottle', weight: '40 g', eta: '10 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
      ProductModel(id: 'hs_6', name: 'Snapin Garlic Bread Seasoning', weight: '50 g', eta: '10 MINS', price: 89, originalPrice: 99, discount: '10% OFF', image: 'https://pngimg.com/uploads/spices/spices_PNG101452.png'),
    ],

    // -------------------------------------------------------------------------
    // 3. OILS & GHEE
    // -------------------------------------------------------------------------
    'Sunflower & Other Oils': [
      ProductModel(id: 'og_1', name: 'Sundrop Superlite Advanced Sunflower Oil Saver Pack', weight: '1.7 kg', eta: '10 MINS', price: 449, originalPrice: 460, discount: '2% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_2', name: 'Sundrop Superlite Advanced Sunflower Oil Jug', weight: '2.55 kg', eta: '10 MINS', price: 669, originalPrice: 699, discount: '4% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_3', name: 'Sunpure Refined Sunflower Oil Pouch', weight: '1 Litre', eta: '10 MINS', price: 179, originalPrice: 220, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_4', name: 'Gold Winner Refined Sunflower Oil Vita D', weight: '1 Litre', eta: '10 MINS', price: 174, originalPrice: 213, discount: '18% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_5', name: 'Fortune Sunlite Refined Sunflower Oil', weight: '1 Litre', eta: '10 MINS', price: 168, originalPrice: 205, discount: '18% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'og_6', name: 'Saffola Gold Multisource Edible Oil', weight: '1 Litre', eta: '10 MINS', price: 195, originalPrice: 230, discount: '15% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Mustard Oils': [
      ProductModel(id: 'mo_1', name: 'TIME FOR ORGANICS TFO Organic Cold Pressed Mustard Oil', weight: '2 Litre', eta: '10 MINS', price: 738, originalPrice: 793, discount: '6% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_2', name: 'INDICWISDOM Cold Pressed Mustard Oil Pure Unrefined', weight: '1 Litre', eta: '10 MINS', price: 263, originalPrice: 350, discount: '24% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_3', name: 'Fortune Premio Cold Pressed Mustard Oil Pet', weight: '1 Litre', eta: '10 MINS', price: 331, originalPrice: 425, discount: '22% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_4', name: 'Fortune Kachi Ghani Mustard Oil Bottle', weight: '1 Litre', eta: '10 MINS', price: 205, originalPrice: 255, discount: '19% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_5', name: 'Anveshan Cold Pressed Mustard Oil', weight: '1 Litre', eta: '10 MINS', price: 310, originalPrice: 380, discount: '18% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'mo_6', name: 'Engine Kachi Ghani Mustard Oil', weight: '1 Litre', eta: '10 MINS', price: 215, originalPrice: 260, discount: '17% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Cold Pressed': [
      ProductModel(id: 'cp_o1', name: 'INDICWISDOM Cold Pressed Groundnut Oil', weight: '1 Litre', eta: '10 MINS', price: 295, originalPrice: 380, discount: '22% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'cp_o2', name: 'Anveshan Wood Pressed Sesame Oil', weight: '500 ml', eta: '10 MINS', price: 345, originalPrice: 420, discount: '17% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'cp_o3', name: 'Tata Sampann Cold Pressed Coconut Oil', weight: '500 ml', eta: '10 MINS', price: 220, originalPrice: 275, discount: '20% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'cp_o4', name: 'Borges Extra Virgin Olive Oil Glass Bottle', weight: '500 ml', eta: '10 MINS', price: 685, originalPrice: 850, discount: '19% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'cp_o5', name: 'Figaro Extra Virgin Olive Oil', weight: '250 ml', eta: '10 MINS', price: 399, originalPrice: 480, discount: '16% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'cp_o6', name: 'KlF Nirmal Cold Pressed Coconut Oil', weight: '1 Litre', eta: '10 MINS', price: 320, originalPrice: 390, discount: '17% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Ghee': [
      ProductModel(id: 'gh_1', name: 'Amul Pure Ghee Granular Carton', weight: '1 Litre', eta: '10 MINS', price: 615, originalPrice: 650, discount: '5% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'gh_2', name: 'Nandini Pure Cow Ghee Tin', weight: '500 ml', eta: '10 MINS', price: 310, originalPrice: 340, discount: '8% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'gh_3', name: 'Ananda Pure Cow Ghee Jar', weight: '1 Litre', eta: '10 MINS', price: 640, originalPrice: 720, discount: '11% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'gh_4', name: 'Aashirvaad Svasti Pure Cow Ghee', weight: '500 ml', eta: '10 MINS', price: 335, originalPrice: 375, discount: '10% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'gh_5', name: 'Mother Dairy Pure Cow Ghee', weight: '1 Litre', eta: '10 MINS', price: 625, originalPrice: 680, discount: '8% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'gh_6', name: 'Organic Tattva Organic A2 Cow Ghee', weight: '500 ml', eta: '10 MINS', price: 580, originalPrice: 699, discount: '17% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],
    'Soyabean Oils': [
      ProductModel(id: 'so_1', name: 'Fortune Soyabean Refined Oil Pouch', weight: '1 Litre', eta: '10 MINS', price: 145, originalPrice: 175, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'so_2', name: 'Mahakosh Refined Soyabean Oil', weight: '1 Litre', eta: '10 MINS', price: 138, originalPrice: 165, discount: '16% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'so_3', name: 'Ruchi Gold Soyabean Refined Oil', weight: '1 Litre', eta: '10 MINS', price: 135, originalPrice: 160, discount: '15% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'so_4', name: 'Gemini Soyabean Cooking Oil', weight: '1 Litre', eta: '10 MINS', price: 142, originalPrice: 170, discount: '16% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'so_5', name: 'Saffola Soyabean Oil Enriched With Vita', weight: '1 Litre', eta: '10 MINS', price: 155, originalPrice: 185, discount: '16% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
      ProductModel(id: 'so_6', name: 'Fortune Soyabean Oil Can', weight: '5 Litre', eta: '10 MINS', price: 710, originalPrice: 850, discount: '16% OFF', image: 'https://pngimg.com/uploads/olive_oil/olive_oil_PNG9.png'),
    ],

    // -------------------------------------------------------------------------
    // 4. CEREALS & BREAKFAST
    // -------------------------------------------------------------------------
    'Ready Mixes': [
      ProductModel(id: 'rm_x1', name: 'MTR Rava Dosa Instant Mix', weight: '500 g', eta: '10 MINS', price: 115, originalPrice: 135, discount: '14% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'rm_x2', name: 'MTR Rice Idli Breakfast Mix', weight: '500 g', eta: '10 MINS', price: 110, originalPrice: 130, discount: '15% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'rm_x3', name: 'Gits Khaman Dhokla Instant Mix', weight: '200 g', eta: '10 MINS', price: 75, originalPrice: 85, discount: '11% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'rm_x4', name: 'MTR Khaman Dhokla Instant Breakfast Mix', weight: '500 g', eta: '10 MINS', price: 125, originalPrice: 145, discount: '13% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'rm_x5', name: 'Gits Gulab Jamun Instant Mix', weight: '200 g', eta: '10 MINS', price: 118, originalPrice: 135, discount: '12% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'rm_x6', name: 'MTR Upma Instant Breakfast Mix', weight: '500 g', eta: '10 MINS', price: 105, originalPrice: 120, discount: '12% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Peanut Butters': [
      ProductModel(id: 'pb_g1', name: 'NO!CE Chocolate Peanut Butter 22% Protein', weight: '250 g', eta: '10 MINS', price: 149, originalPrice: 180, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'pb_g2', name: 'Sundrop Regular Crunchy Peanut Butter', weight: '300 g', eta: '10 MINS', price: 88, originalPrice: 99, discount: '11% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'pb_g3', name: 'Pintola All Natural Peanut Butter Creamy', weight: '350 g', eta: '10 MINS', price: 175, originalPrice: 199, discount: '12% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'pb_g4', name: 'MyFitness Chocolate Peanut Butter Smooth', weight: '510 g', eta: '10 MINS', price: 271, originalPrice: 319, discount: '15% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'pb_g5', name: 'SNAAQZ Natural Creamy Peanut Butter', weight: '500 g', eta: '10 MINS', price: 250, originalPrice: 270, discount: '7% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'pb_g6', name: 'Dr. Oetker FunFoods Crunchy Peanut Butter', weight: '342 g', eta: '10 MINS', price: 145, originalPrice: 169, discount: '14% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Chocolate Spreads': [
      ProductModel(id: 'cs_sp1', name: 'Gladful Zero Palm Oil Hazelnut Almond Spread', weight: '300 g', eta: '10 MINS', price: 337, originalPrice: 499, discount: '32% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp2', name: 'Hershey\'s Cocoa With Almond Spread', weight: '150 g', eta: '10 MINS', price: 157, originalPrice: 175, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp3', name: 'Little Joys Chocolate Hazelnut Spread', weight: '300 g', eta: '10 MINS', price: 499, originalPrice: 550, discount: '9% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp4', name: 'Nutella Hazelnut Spread With Cocoa Jar', weight: '350 g', eta: '10 MINS', price: 410, originalPrice: 450, discount: '9% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp5', name: 'Hershey\'s Chocolate Flavoured Syrup', weight: '623 g', eta: '10 MINS', price: 215, originalPrice: 240, discount: '10% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'cs_sp6', name: 'Amul Choco Zoo Spread', weight: '200 g', eta: '10 MINS', price: 85, originalPrice: 95, discount: '10% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Masala Oats': [
      ProductModel(id: 'mo_s1', name: 'Saffola Veggie Twist Masala Oats', weight: '38 g', eta: '10 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s2', name: 'Saffola Classic Masala Oats', weight: '38 g', eta: '10 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s3', name: 'Saffola Peppy Tomato Masala Oats', weight: '38 g', eta: '10 MINS', price: 20, originalPrice: 20, discount: 'MRP', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s4', name: 'Quaker Rolled Oats Whole Grain', weight: '1 kg', eta: '10 MINS', price: 185, originalPrice: 220, discount: '15% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s5', name: 'Saffola Oats Whole Grain 100% Natural', weight: '1 kg', eta: '10 MINS', price: 175, originalPrice: 210, discount: '16% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mo_s6', name: 'Kellogg\'s Rolled Oats High Fibre', weight: '500 g', eta: '10 MINS', price: 110, originalPrice: 130, discount: '15% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Jams': [
      ProductModel(id: 'jm_1', name: 'NO!CE Apple Pineapple Jam (80% fruit & No Preservatives)', weight: '125 g', eta: '10 MINS', price: 99, originalPrice: 169, discount: '41% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_2', name: 'Kissan Mixed Fruit Jam Glass Jar', weight: '90 g', eta: '10 MINS', price: 25, originalPrice: 25, discount: 'MRP', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_3', name: 'Urban Platter Pure Gulkand Damask Rose', weight: '300 g', eta: '10 MINS', price: 167, originalPrice: 250, discount: '33% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_4', name: 'NO!CE Chunky Strawberry Jam', weight: '125 g', eta: '10 MINS', price: 129, originalPrice: 169, discount: '23% OFF', badge: 'SWITCH', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_5', name: 'Mapro Mango Crush Spread', weight: '1 Litre', eta: '10 MINS', price: 210, originalPrice: 250, discount: '16% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'jm_6', name: 'Kissan Mango Jam Squeeze Bottle', weight: '350 g', eta: '10 MINS', price: 115, originalPrice: 130, discount: '11% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Juices & Fruit Drinks': [
      ProductModel(id: 'jfd_1', name: 'Real Fruit Power Mixed Fruit Juice', weight: '1 Litre', eta: '10 MINS', price: 115, originalPrice: 140, discount: '17% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      ProductModel(id: 'jfd_2', name: 'Tropicana 100% Orange Juice No Added Sugar', weight: '1 Litre', eta: '10 MINS', price: 125, originalPrice: 155, discount: '19% OFF', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      ProductModel(id: 'jfd_3', name: 'Paper Boat Aamras Mango Juice', weight: '200 ml', eta: '10 MINS', price: 40, originalPrice: 40, discount: 'MRP', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      ProductModel(id: 'jfd_4', name: 'B-Natural Pomegranate Juice Pack', weight: '1 Litre', eta: '10 MINS', price: 110, originalPrice: 135, discount: '18% OFF', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      ProductModel(id: 'jfd_5', name: 'Raw Pressery Cold Pressed Guava Juice', weight: '250 ml', eta: '10 MINS', price: 85, originalPrice: 100, discount: '15% OFF', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
      ProductModel(id: 'jfd_6', name: 'Appy Fizz Sparkling Apple Juice', weight: '600 ml', eta: '10 MINS', price: 38, originalPrice: 40, discount: '5% OFF', image: 'https://pngimg.com/uploads/juice/juice_PNG7171.png'),
    ],
    'Mayo & Spreads': [
      ProductModel(id: 'mys_1', name: 'Hellmanns Roasted Garlic Mayonnaise Pouch', weight: '85 g', eta: '10 MINS', price: 42, originalPrice: 50, discount: '16% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mys_2', name: 'Hellmanns Smoky Tandoori Mayonnaise Pouch', weight: '85 g', eta: '10 MINS', price: 42, originalPrice: 50, discount: '16% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mys_3', name: 'Dr. Oetker FunFoods Veg Mayonnaise Original', weight: '100 g', eta: '10 MINS', price: 44, originalPrice: 49, discount: '10% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mys_4', name: 'Hellmann\'s Real Veg Mayonnaise Jar', weight: '250 g', eta: '10 MINS', price: 89, originalPrice: 98, discount: '9% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mys_5', name: 'Veeba Eggless Mayo Original', weight: '250 g', eta: '10 MINS', price: 78, originalPrice: 89, discount: '12% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'mys_6', name: 'Wingreens Garlic Dip & Spread', weight: '150 g', eta: '10 MINS', price: 85, originalPrice: 99, discount: '14% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
    'Hot Beverages': [
      ProductModel(id: 'hb_1', name: 'Tulsi Gold Tea CTC Leaf | Premium Chai Patti', weight: '250 g', eta: '10 MINS', price: 121, originalPrice: 135, discount: '10% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_2', name: 'Bournvita Chocolate Nutrition Drink Jar', weight: '500 g', eta: '10 MINS', price: 255, originalPrice: 263, discount: '3% OFF', badge: 'Ad', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_3', name: 'Tata Tea Gold All in 1 Instant Premix Cardamom', weight: '10 Pieces', eta: '10 MINS', price: 90, originalPrice: 132, discount: '31% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_4', name: 'Sleepy Owl Assorted Pack Instant Coffee Travel', weight: '20 g', eta: '10 MINS', price: 109, originalPrice: 140, discount: '22% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_5', name: 'Red Label Natural Care Tea Powder', weight: '500 g', eta: '10 MINS', price: 285, originalPrice: 320, discount: '11% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
      ProductModel(id: 'hb_6', name: 'Nescafe Classic Instant Coffee Jar', weight: '100 g', eta: '10 MINS', price: 340, originalPrice: 380, discount: '10% OFF', image: 'https://pngimg.com/uploads/tea/tea_PNG98881.png'),
    ],
    'Seeds and trail Mixes': [
      ProductModel(id: 'stm_1', name: 'Farmley Roasted Pumpkin Seeds With Salt', weight: '150 g', eta: '10 MINS', price: 165, originalPrice: 210, discount: '21% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'stm_2', name: 'True Elements 7 in 1 Super Seeds Mix', weight: '250 g', eta: '10 MINS', price: 220, originalPrice: 280, discount: '21% OFF', badge: 'BESTSELLER', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'stm_3', name: 'Urban Platter Raw Chia Seeds Premium', weight: '250 g', eta: '10 MINS', price: 180, originalPrice: 225, discount: '20% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'stm_4', name: 'Farmley Roasted Sunflower Seeds', weight: '150 g', eta: '10 MINS', price: 145, originalPrice: 180, discount: '19% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'stm_5', name: 'True Elements Daily Nut Mix With Berries', weight: '200 g', eta: '10 MINS', price: 299, originalPrice: 360, discount: '17% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
      ProductModel(id: 'stm_6', name: 'Flax Seeds Organic Whole Roasted', weight: '200 g', eta: '10 MINS', price: 95, originalPrice: 120, discount: '20% OFF', image: 'https://pngimg.com/uploads/cornflakes/cornflakes_PNG31.png'),
    ],
  };
}