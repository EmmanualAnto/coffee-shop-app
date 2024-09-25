import 'package:coffeeshop_app/card.dart';
import 'package:coffeeshop_app/cartpage.dart';
import 'package:coffeeshop_app/products.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  Products products = Products();
  Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return cartpage();
                  },
                ));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
        ],
        title: Text(
          "Coffee Shop ",
          style: TextStyle(color: const Color.fromARGB(255, 245, 241, 241)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(64, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 105, 50, 30),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: products.products.length,
          itemBuilder: (context, index) {
            return card(product: products.products[index]);
          },
        ),
      ),
    );
  }
}
