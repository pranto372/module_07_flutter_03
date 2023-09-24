import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> product = [
    Product(name: 'Product 1', price: 10),
    Product(name: 'Product 2', price: 20),
    Product(name: 'Product 3', price: 20),
    Product(name: 'Product 4', price: 20),
    Product(name: 'Product 5', price: 20),
    Product(name: 'Product 6', price: 20),
    Product(name: 'Product 7', price: 20),
    Product(name: 'Product 8', price: 20),
    Product(name: 'Product 9', price: 20),
    Product(name: 'Product 10', price: 20),
    Product(name: 'Product 11', price: 20),
    Product(name: 'Product 12', price: 20),
    Product(name: 'Product 13', price: 20),
    Product(name: 'Product 14', price: 20),
    Product(name: 'Product 15', price: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product List')),
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: product[index],
            onBuyPressed: () {
              setState(() {
                product[index].incrementCounter();
                if (product[index].counter == 5) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Congratulations!'),
                        content: Text('You\'ve bought 5 ${product[index].name}!'),
                        actions: [
                          ElevatedButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              });
            },
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  int counter = 0;

  Product({required this.name, required this.price});

  void incrementCounter() {
    counter++;
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function() onBuyPressed;

  ProductItem({required this.product, required this.onBuyPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: ${product.counter}'),
          ElevatedButton(
            onPressed: onBuyPressed,
            child: Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage({required this.products});

  @override
  Widget build(BuildContext context) {
    int totalItems = products.fold(0, (sum, product) => sum + product.counter);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Text('Total Items in Cart: $totalItems'),
      ),
    );
  }
}