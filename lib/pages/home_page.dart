// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeeappui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          //1.text that says find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 60),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //2.search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Enter your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //3.tabs of list
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(
                  coffeeType: 'Cappucino',
                  isSelected: true,
                ),
                CoffeeType(
                  coffeeType: 'Latte',
                  isSelected: false,
                ),
                CoffeeType(
                  coffeeType: 'Black',
                  isSelected: false,
                ),
              ],
            ),
          ),

          //4.horizontal list of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeName: 'Latte',
                  coffeeSubText: 'With Almond Milk',
                  imageName: 'lib/images/latte.jpg',
                  price: 4.20,
                ),
                CoffeeTile(
                  coffeeName: 'Cappucino',
                  coffeeSubText: 'With Chocolate',
                  imageName: 'lib/images/cappucino.jpg',
                  price: 3.14,
                ),
                CoffeeTile(
                  coffeeName: 'Milk Coffee',
                  coffeeSubText: 'With Added Milk',
                  imageName: 'lib/images/milk.jpg',
                  price: 4.60,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
