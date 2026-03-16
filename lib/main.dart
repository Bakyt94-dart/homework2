import 'package:flutter/material.dart';
import 'package:flutter_hw_2/product_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Товары"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/nike.jpg",
                      title: "Nike Air Max",
                      price: "\$120",
                      category: "Shoes",
                      rating: 4,
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/leatherbag.jpg",
                      title: "Leather Bag",
                      price: "\$85",
                      category: "Bags",
                      rating: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      image: "images/headphones.jpg",
                      title: "Headphones",
                      price: "\$210",
                      category: "Audio",
                      rating: 4,
                      sale: true,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProductCard(
                      image: "images/smartwatch.jpg",
                      title: "Smart Watch",
                      price: "\$150",
                      category: "Gadgets",
                      rating: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
