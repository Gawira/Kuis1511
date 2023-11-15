import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl; // New property for the product image URL

  Product(this.name, this.description, this.price, this.imageUrl);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      'Product 1',
      'Description for Product 1',
      19.99,
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/08/7-Keran-Air-LED-300x300.jpg',
    ),
    Product(
      'Product 2',
      'Description for Product 2',
      29.99,
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/08/1-topi-payung-300x300.jpg',
    ),
    Product(
      'Product 3',
      'Description for Product 3',
      39.99,
      'https://example.com/product3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('E-Commerce App'),
          backgroundColor: const Color.fromARGB(255, 243, 33, 33),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                products[index].imageUrl,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].name),
              subtitle: Text(products[index].description),
              trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
            );
          },
        ),
      ),
    );
  }
}
