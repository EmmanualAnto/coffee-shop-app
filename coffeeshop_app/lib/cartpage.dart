import 'package:coffeeshop_app/mainpage.dart';
import 'package:coffeeshop_app/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartpage extends StatelessWidget {
  cartpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Cart Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(64, 0, 0, 0),
      ),
      backgroundColor: const Color.fromARGB(255, 105, 50, 30),
      body: Consumer<Products>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.cartlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(64, 0, 0, 0)),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        value.cartlist[index]["image"],
                        height: 100,
                        width: 100,
                      ),
                      Column(
                        children: [
                          Text(
                            value.cartlist[index]["name"],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                              "Rs.${value.cartlist[index]["price"]}".toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Buy Now")),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: IconButton(
                    tooltip: "Remove from cart",
                    onPressed: () {
                      value.removeFromCart(index);
                    },
                    icon: Icon(
                      Icons.remove_shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ]);
            },
          );
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Mainpage();
                }));
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
