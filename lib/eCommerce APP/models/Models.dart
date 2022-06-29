import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 270,
      size: 12,
      description: dummyText,
      image: "images/bag_1.jpg",
      color: Colors.black),
  Product(
      id: 2,
      title: "Stylish Brawn ",
      price: 300,
      size: 8,
      description: dummyText,
      image: "images/bag_2.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Modern Top",
      price: 900,
      size: 10,
      description: dummyText,
      image: "images/bag_3.jpg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "images/bag_4.jpg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/bag_5.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "images/bag_6.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";