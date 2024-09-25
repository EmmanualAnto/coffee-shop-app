import 'package:flutter/material.dart';

class Products extends ChangeNotifier {
  List products = [
    {
      "_id": "66e1485ca692c61082c80283",
      "name": "Brazilian Santos",
      "description":
          "A smooth and nutty coffee with notes of chocolate and almond. Perfect for a rich, full-bodied cup with a low acidity.",
      "price": 13.99,
      "image":
          "https://plus.unsplash.com/premium_photo-1674327105076-36c4419864cf?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "roastLevel": "Medium",
      "rating": "4.5",
      "size": "Medium",
      "category": "Single-Origin"
    },
    {
      "_id": "66e148aca692c61082c89fee",
      "name": "Ethiopian Yirgacheffe",
      "description":
          "Bright and fruity with floral undertones. Offers a light, tea-like body with citrus and berry notes.",
      "price": 14.99,
      "image": "https://images.unsplash.com/photo-1509042239860-f550ce710b93",
      "roastLevel": "Light",
      "rating": "4.7",
      "size": "Small",
      "category": "Single-Origin"
    },
    {
      "_id": "66e148c4a692c61082c8c6cb",
      "name": "Colombian Supremo",
      "description":
          "Full-bodied with a rich, balanced flavor profile. Notes of caramel and nuts with a medium acidity.",
      "price": 12.99,
      "image": "https://images.unsplash.com/photo-1519608487953-e999c86e7455",
      "roastLevel": "Medium-Dark",
      "rating": "4.6",
      "size": "Large",
      "category": "Blend"
    },
    {
      "_id": "66e148dfa692c61082c8fb1a",
      "name": "Sumatra Mandheling",
      "description":
          "Earthy and bold, with hints of chocolate and spice. Low acidity and a full, syrupy body.",
      "price": 15.5,
      "image": "https://images.unsplash.com/photo-1519389950473-47ba0277781c",
      "roastLevel": "Dark",
      "rating": "4.4",
      "size": "Large",
      "category": "Single-Origin"
    },
    {
      "_id": "66e148eda692c61082c91228",
      "name": "Guatemalan Antigua",
      "description":
          "Balanced with a smooth body and rich flavor. Notes of cocoa and bright citrus acidity.",
      "price": 14.5,
      "image": "https://images.unsplash.com/photo-1517685352821-92cf88aee5a5",
      "roastLevel": "Medium",
      "rating": "4.3",
      "size": "Medium",
      "category": "Single-Origin"
    }
  ];
  List cartlist = [];

  void Cartitems(var items) {
    cartlist.add(items);
    notifyListeners();
  }

  void removeFromCart(var index) {
    cartlist.removeAt(index);
    notifyListeners();
  }
}
