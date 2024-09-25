import 'package:coffeeshop_app/cartpage.dart';
import 'package:coffeeshop_app/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailspage extends StatelessWidget {
  var products;
  Detailspage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 50, 30),
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
        iconTheme: IconThemeData(color: Colors.white),
        title:
            const Text("Item Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(64, 0, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(products["name"],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            Text(products["description"],
                style: const TextStyle(color: Colors.white, fontSize: 15)),
            Text("Rs.${products["price"]}",
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            Image.network(
              products["image"],
              height: 200,
              width: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Products>(context, listen: false)
                      .Cartitems(products);
                },
                child: const Text("Add to Cart"))
          ],
        ),
      ),
    );
  }
}
