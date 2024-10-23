import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max',
      price: '260',
      imagePath: 'assets/images/shoe1.jpg',
      description: 'Shoe that makes you fly',
    ),
    Shoe(
      name: 'Pro Runners',
      price: '236',
      imagePath: 'assets/images/shoe2.jpg',
      description: 'Feel light-weight and run like you\'ve never before',
    ),
    Shoe(
      name: 'Canvas Regulars',
      price: '189',
      imagePath: 'assets/images/shoe3.jpg',
      description: 'Your everyday shoe that just feels right',
    ),
    Shoe(
      name: 'FauX Seude',
      price: '399',
      imagePath: 'assets/images/shoe4.jpg',
      description: 'A touch of inspiration for a new style',
    ),
  ];

  // list of items in user's cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
