import 'package:flutter/material.dart';
import 'package:hellpro/main_screen.dart';
import 'package:hellpro/provider/done_food_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneFoodProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: const Mainscreen(),
      ),
    );
  }
}
