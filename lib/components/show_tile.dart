import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShowTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShowTile({ Key? key, required this.shoe, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoe.imagePath,
            ),
          ),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0
            ),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // price  + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name
                  Text(
                    shoe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,  
                    ),
                  ),
            
                  const SizedBox(height: 5,),
            
                //price
                  Text(
                    '\s' + shoe.price,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
            
                  ],
                ),
            
                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      )
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ),
                ),
              ],
            ),
          )

          // button to add to cart

        ],
      ),
    );
  }
}