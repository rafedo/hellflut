import 'package:flutter/material.dart';
import 'package:hellpro/model/food.dart';

class ListItem extends StatelessWidget {
  final Food food;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;
  const ListItem({
    super.key,
    required this.food,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
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
                  Text(
                    food.location,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(food.harga),
                ],
              ),
            ),
          ),
          Checkbox(
              checkColor: Colors.white,
              value: isDone,
              onChanged: onCheckboxClick)
        ],
      ),
    );
  }
}
