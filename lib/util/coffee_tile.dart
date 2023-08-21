// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String imageName, coffeeName, coffeeSubText;
  final price;
  const CoffeeTile(
      {super.key,
      required this.imageName,
      required this.coffeeName,
      required this.coffeeSubText,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Coffee Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 1.1,
                    child: Image.asset(
                      imageName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Coffee Name
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        coffeeSubText,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$price'),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(7)),
                      child: Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
