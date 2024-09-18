import 'package:flutter/material.dart';

import 'product_images/product_image.dart';
import 'product_infos/product_details.dart';
import 'product_infos/product_footer.dart';


class ProductCard extends StatelessWidget {
  final String title;
  final String seller;
  final String location;
  final String price;
  final String distance;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.seller,
    required this.location,
    required this.price,
    required this.distance,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          ProductImage(imageUrl: imageUrl),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetails(
                  title: title,
                  seller: seller,
                  location: location,
                ),
                const SizedBox(height: 8),
                ProductFooter(
                  price: price,
                  distance: distance,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
