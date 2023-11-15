import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product(this.name, this.description, this.price, this.imageUrl);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      'Keran Air LED',
      'Rp. 1,999',
      19.99,
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/08/7-Keran-Air-LED-300x300.jpg',
    ),
    Product(
      'Topi Payung Keren',
      'Rp. 2,999',
      29.99,
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/08/1-topi-payung-300x300.jpg',
    ),
    Product(
      'Payung Rainbow',
      'Rp. 3,999',
      39.99,
      'https://images.tokopedia.net/img/cache/250-square/hDjmkQ/2023/11/7/c698e876-7541-4bd0-97b0-afee3d88874c.jpg?ect=4g',
    ),
    Product(
      'Box Kardus',
      'Rp. 3,999',
      39.99,
      'https://www.sentrarak.com/wp-content/uploads/2017/09/stok-barang.jpg',
    ),
    Product(
      'Keyboard',
      'Rp. 300,999',
      39.99,
      'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/10/9/552af722-fb4f-41b9-b3c9-a6b2136e1a10.jpg',
    ),
    Product(
      'Mouse',
      'Rp. 354,999',
      39.99,
      'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/7/22/bd3a50ca-7209-425c-ba5c-a0a1406dd9e9.jpg',
    ),
    Product(
      'PC',
      'Rp. 214,999',
      39.99,
      'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/6/24/ae134ba7-f006-4ae3-976f-46bef9df98da.jpg',
    ),
    Product(
      'Monitor',
      'Rp. 1,999',
      39.99,
      'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/11/29/1398844c-1f54-47f9-8c21-d9f3129498a9.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Godrej'), 
            backgroundColor: const Color.fromARGB(255, 243, 33, 33),
            
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Promosi',
                ),
                Tab(
                  text: 'Barang',
                ),
                Tab(
                  text: 'Terlaris',
                ),
              ],
            ),
          ),
           backgroundColor: Color.fromARGB(255, 72, 72, 72),  
           body: TabBarView(
            children: [
              // Promosi tab content
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: products.length-2,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          products[index].imageUrl,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        Text(products[index].name),
                        Text(products[index].description, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        Text('Keranjang', style: TextStyle(color: const Color.fromARGB(255, 0, 21, 255), fontSize: 20, fontWeight: FontWeight.bold)),
                        
                      ],
                    ),
                  );
                },
              ),

              // Placeholder for Barang tab content
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          products[index].imageUrl,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        Text(products[index].name),
                        Text(products[index].description, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        Text('Keranjang', style: TextStyle(color: const Color.fromARGB(255, 0, 21, 255), fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: products.length-7,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          products[5].imageUrl,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        
                        Text(products[5].name),
                        Text(products[5].description, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                        Text('Keranjang', style: TextStyle(color: const Color.fromARGB(255, 0, 21, 255), fontSize: 20, fontWeight: FontWeight.bold)),                       
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


