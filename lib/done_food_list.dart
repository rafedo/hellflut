import 'package:flutter/material.dart';
import 'package:hellpro/model/food.dart';

class DoneFoodList extends StatelessWidget {
  final List<Food> doneFood;
  const DoneFoodList({Key? key, required this.doneFood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional yang sudah pernah dicoba'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Food food = doneFood[index];
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
        itemCount: doneFood.length,
      ),
    );
  }
}
