import 'package:flutter/material.dart';
import 'package:hellpro/food_list.dart';
import 'package:hellpro/model/food.dart';
import 'package:hellpro/provider/done_food_provider.dart';
import 'package:provider/provider.dart';

class DoneFoodList extends StatelessWidget {
  const DoneFoodList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Food> doneFoodList = Provider.of<DoneFoodProvider>(
      context,
      listen: false,
    ).doneFoodList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional yang sudah pernah dicoba'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Food food = doneFoodList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  food.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const Icon(Icons.done_outline)
              ],
            ),
          );
        },
        itemCount: doneFoodList.length,
      ),
    );
  }
}
