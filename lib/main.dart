import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShoppingList());
  }
}

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(Icons.shopping_cart, 'Milk'),
    ShoppingItem(Icons.food_bank, 'Eggs'),
    ShoppingItem(Icons.breakfast_dining, 'Bread'),
    ShoppingItem(Icons.local_drink, 'Milk'),
    ShoppingItem(Icons.egg, 'Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Shopping List', style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        actions: [
          IconButton(
            color: Colors.orange,
            iconSize: 30,
            icon: Icon(Icons.shopping_cart,),
            onPressed: () {
              print("Go To cart");
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final shoppingItem = shoppingItems[index];
          return ListTile(
            leading: Icon(shoppingItem.icon, color: Colors.orange, size: 25,),
            title: Text(shoppingItem.name , style: TextStyle(fontSize: 20),),
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem(this.icon, this.name);
}
