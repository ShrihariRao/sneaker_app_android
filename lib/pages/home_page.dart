import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(),
    );
  }
}