
import 'package:flutter/material.dart';
import 'package:swiggy_clone/features/instamart/models/product_model.dart';

class BookCategoryModel {
  final String title;
  final String? subtitle;
  final String image;
  final Color bgColor;

  const BookCategoryModel({
    required this.title,
    this.subtitle,
    required this.image,
    required this.bgColor,
  });
}

class BookStoreMockData {
  static const List<BookCategoryModel> topCategories = [
    BookCategoryModel(
      title: 'Deals',
      subtitle: 'START AT ₹29',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF62B6CB),
    ),
    BookCategoryModel(
      title: 'Fiction\nrange',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF5390D9),
    ),
    BookCategoryModel(
      title: 'Comics &\nmangas',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF48BFE3),
    ),
    BookCategoryModel(
      title: 'Classics\ncollection',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF56CBF9),
    ),
    BookCategoryModel(
      title: 'Business &\neconomics',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF64DFDF),
    ),
    BookCategoryModel(
      title: 'Young\nadult',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF48CAE4),
    ),
    BookCategoryModel(
      title: 'Non-fiction\nrange',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF00B4D8),
    ),
    BookCategoryModel(
      title: 'Colouring &\nactivity books',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF0077B6),
    ),
    BookCategoryModel(
      title: 'Children\'s\ncorner',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF90E0EF),
    ),
    BookCategoryModel(
      title: 'Box sets &\ngifting',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
      bgColor: Color(0xFF0096C7),
    ),
  ];

  static const List<ProductModel> popularBooks = [
    ProductModel(
      id: 'bk_1',
      name: 'The Prophet by Kahlil Gibran',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 169,
      originalPrice: 199,
      discount: '15% OFF',
      badge: 'Poetry',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_2',
      name: 'Atomic Habits by James Clear',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 869,
      originalPrice: 899,
      discount: '3% OFF',
      badge: 'BESTSELLER',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_3',
      name: 'Rich Dad Poor Dad by Robert Kiyosaki',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 409,
      originalPrice: 499,
      discount: '18% OFF',
      badge: 'Finance',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
  ];

  static const List<ProductModel> nytBestsellers = [
    ProductModel(
      id: 'bk_4',
      name: 'How Not To Die by Michael Greger',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 779,
      originalPrice: 799,
      discount: '2% OFF',
      badge: 'NonFiction',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_5',
      name: 'Divine Rivals by Rebecca Ross',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 659,
      originalPrice: 699,
      discount: '5% OFF',
      badge: 'Romantasy',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_6',
      name: 'The Subtle Art of Not Giving A F*Ck by Mark Manson',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 635,
      originalPrice: 699,
      discount: '9% OFF',
      badge: 'SOLD OUT',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
  ];

  static const List<ProductModel> newArrivals = [
    ProductModel(
      id: 'bk_7',
      name: 'Tale of Shiva and Parvati - Comic',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 29,
      originalPrice: 99,
      discount: '70% OFF',
      badge: 'Rush Hour Deals!',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_8',
      name: 'Hanuman Kid\'s Book by Sunita Pant Bansal',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 414,
      originalPrice: 499,
      discount: '17% OFF',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
    ProductModel(
      id: 'bk_9',
      name: 'Lil Legends by Maninder Kaur',
      weight: '1 Piece',
      eta: '7 MINS',
      price: 439,
      originalPrice: 499,
      discount: '12% OFF',
      image: 'https://pngimg.com/uploads/book/book_PNG2111.png',
    ),
  ];
}