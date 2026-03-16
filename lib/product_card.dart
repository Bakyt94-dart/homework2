import 'package:flutter/material.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String category;
  final int rating;
  final bool sale;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.category,
    required this.rating,
    this.sale = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(paddingSize),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cardRadius),
       
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: imageHeight,
                    color: Colors.red,
                    child: Center(child: Text('Ошибка')),
                  ),
                ),
              ),
            
              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "SALE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          
          
          Row(
            children: [
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
              Spacer(),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  color: priceColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 8),
          
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          SizedBox(height: 8),
          
          
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < rating ? Icons.star : Icons.star_border,
                size: starSize,
                color: starColor,
              );
            }),
          ),
          
          SizedBox(height: 12),
          
          
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Купить'),
            ),
          ),
          
          SizedBox(height: buttonSpacing),
          
          
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
              
              },
              child: Text('В избранное'),
            ),
          ),
        ],
      ),
    );
  }
}