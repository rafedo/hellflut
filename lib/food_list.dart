import 'package:flutter/material.dart';
import 'package:hellpro/detail_screen.dart';
import 'package:hellpro/model/food.dart';
import 'package:hellpro/List_item.dart';

class Foodlist extends StatefulWidget {
  final List<Food> doneFoodList;

  const Foodlist({Key? key, required this.doneFoodList}) : super(key: key);
  @override
  _FoodlistState createState() => _FoodlistState(doneFoodList);
}

class _FoodlistState extends State<Foodlist> {
  final List<Food> doneFoodList;
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

  _FoodlistState(this.doneFoodList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Food food = foodList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Detailscreen(food: food);
            }));
          },
          child: ListItem(
            food: food,
            isDone: doneFoodList.contains(food),
            onCheckboxClick: (bool? value) {
              setState(() {
                if (value != null) {
                  value ? doneFoodList.add(food) : doneFoodList.remove(food);
                }
              });
            },
          ),
        );
      },
      itemCount: foodList.length,
    );
  }
}
