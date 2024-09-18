import 'package:flutter/material.dart';
import '../widgets/location_header.dart';
import '../widgets/cards/product_card.dart';

class Around extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'title': 'Jacynthe en pleine terre',
      'subtitle': 'ESAT du Pré-Saint-Gervais',
      'location': 'Jumonville',
      'price': '5,00€',
      'distance': '10,3 km',
      'imageUrl': 'https://www.shutterstock.com/image-photo/mass-various-colored-jacynth-flowers-260nw-35631526.jpg',
    },
    {
      'title': 'Crottin de cheval',
      'subtitle': 'ESAT du Pré-Saint-Gervais',
      'location': 'Jumonville',
      'price': '5,00€',
      'distance': '10,3 km',
      'imageUrl': 'https://jardinage.lemonde.fr/images/dossiers/historique/fumier-cheval-120915.jpg',
    },
    {
      'title': 'Roses',
      'subtitle': 'ESAT du Pré-Saint-Gervais',
      'location': 'Jumonville',
      'price': '5,00€',
      'distance': '10,8 km',
      'imageUrl': 'https://www.francefleurs.com/13671-large_default/rose-branchue-rose-10-tiges.jpg',
    },
    // Ajoute plus d'entrées si nécessaire...
  ];

  Around({super.key});

  

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: LocationHeader(),
    body: ListView.builder(
        itemCount: products.length, // Nombre d'éléments dans la liste des produits
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 16.0 : 8.0), // Ajoute de l'espacement uniquement au premier élément
            child: ProductCard(
              title: product['title']!,
              seller: product['subtitle']!,
              location: product['location']!,
              price: product['price']!,
              distance: product['distance']!,
              imageUrl: product['imageUrl']!,
            ),
          );
        },
      ),
    );
  }
}