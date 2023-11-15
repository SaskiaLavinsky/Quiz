import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 161, 0, 0),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text('Godrej', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GroceryItemCard(
              itemName: 'barang1',
              price: 'Rp 24.300',
              imageUrl: 'assets/WONDER.jpg',
            ),
            GroceryItemCard(
              itemName: 'barang2',
              price: 'Rp 41.500',
              imageUrl: 'assets/STELLAMUSK.jpg',
            ),
            GroceryItemCard(
              itemName: 'barang3',
              price: 'Rp 41.500',
              imageUrl: 'assets/STELLAENRG.jpg',
            ),
            // Add more GroceryItemCard widgets for other products
          ],
        ),
      ),
    );
  }
}

class GroceryItemCard extends StatelessWidget {
  final String itemName;
  final String price;
  final String imageUrl;

  const GroceryItemCard({
    Key? key,
    required this.itemName,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.green,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 120.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Price: $price',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
