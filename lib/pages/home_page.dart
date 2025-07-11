import 'package:flutter/material.dart';
import 'package:shoes_app/pages/cart_page.dart';
import 'package:shoes_app/Widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
 List<Widget> pages =[
  ProductList(),
  CartPage()
 ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) { 
    
                 
    return Scaffold(

      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
  bottomNavigationBar: BottomNavigationBar(
    iconSize: 35,
    selectedFontSize: 0,
    unselectedFontSize: 0,
    onTap: (value) {
      setState(() {
        currentPage = value;
      });
    },
    currentIndex:  currentPage,
     
    items: [
      BottomNavigationBarItem(
        
        icon: Icon(Icons.home),
        label: ""
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: ""
        )
    ]
    ),
);
  
  }
}