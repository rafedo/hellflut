import 'package:flutter/material.dart';

import 'package:hellpro/done_food_list.dart';
import 'package:hellpro/food_list.dart';
import 'package:hellpro/model/food.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Mainscreen> {
  final List<Food> doneFoodList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneFoodList();
                }),
              );
            },
          )
        ],
      ),
      body: Foodlist(
        doneFoodList: [],
      ),
    );
  }
}
