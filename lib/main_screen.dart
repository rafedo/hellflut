import 'package:flutter/material.dart';
import 'package:hellpro/detail_screen.dart';
import 'package:hellpro/model/food.dart';
import 'package:hellpro/List_item.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Mainscreen> {
  final List<Food> doneFood = [];
  final List<Food> foodList = [
    Food(
      name: 'Rendang',
      star: '4.9',
      location: 'Minangkabau',
      harga: 'RP 30.000',
      desc:
          'Rendang makanan khas minangkabau yang menjadi makanan terenak no 1 di dunia',
      imageAsset: 'assets/images/food1.jpeg',
    ),
    Food(
      name: 'es pleret',
      star: '3.9',
      location: 'blitar',
      harga: 'RP 5.000',
      desc: 'es pleret minuman khas blitar',
      imageAsset: 'assets/images/pleret.jfif',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Food food = foodList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Detailscreen(food: food);
              }));
            },
            // child: listItem(food),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }
}
