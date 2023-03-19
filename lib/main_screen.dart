import 'package:flutter/material.dart';
import 'package:hellpro/detail_screen.dart';
import 'package:hellpro/model/food.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional Indonesia'),
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
            child: listItem(food),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }

  Widget listItem(Food food) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(food.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    food.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(food.location),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
