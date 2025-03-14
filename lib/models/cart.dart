import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak', 
      price: "236", 
      description: 'The forward-thinking design of his latest signature shoe.',
      imagePath: "lib/images/img1.jpg",
    ),

    Shoe(
      name: 'Air Jordans', 
      price: "220", 
      description: 'you\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: "lib/images/img2.jpg",
    ),

    Shoe(
      name: 'KD Treys', 
      price: "240", 
      description: 'this is description 3',
      imagePath: "lib/images/img3.jpg",
    ),

    Shoe(
      name: 'Kryie 6', 
      price: "240", 
      description: 'this is description 4',
      imagePath: "lib/images/img4.jpg",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}