import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    Key? key,
    required this.shoe
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Image.asset(widget.shoe.name),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}