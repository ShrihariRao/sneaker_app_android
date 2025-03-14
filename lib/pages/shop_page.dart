import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/show_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully added
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added"),
      content: Text("Check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Column(
            children: [
              // search bar
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('search', style: TextStyle(color: Colors.grey)),
                    Icon(Icons.search, color: Colors.grey),
                  ],
                ),
              ),

              // message
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  'Everyone flies.. some fly longer than others',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              // hot picks
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Hot Picks",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShowTile(
                      shoe: shoe,
                      onTap: () =>  addShoeToCart(shoe),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Divider(color: Colors.white),
              ),
            ],
          ),
    );
  }
}
