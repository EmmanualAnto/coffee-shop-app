import 'package:coffeeshop_app/detailspage.dart';
import 'package:coffeeshop_app/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class card extends StatelessWidget {
  var product;

  card({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Detailspage(
              products: product,
            );
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(71, 0, 0, 0)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                product["image"],
                height: 100,
                width: 100,
              ),
              Text(
                product["name"],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                product["description"],
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              Text("Rs.${product["price"].toString()}",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Products>(context, listen: false)
                        .Cartitems(product);
                  },
                  child: Text("Add to Cart"))
            ],
          ),
        ),
      ),
    );
  }
}
