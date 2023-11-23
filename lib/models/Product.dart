import 'dart:ui';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
      image: "assets/images/product_0.png",
      title: "Long Sleeve Shirt",
      price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirt",
    price: 99,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirt",
    price: 180,
    bgColor: const Color(0xFFF8FBFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
