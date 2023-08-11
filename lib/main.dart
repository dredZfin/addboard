import 'package:flutter/material.dart';
import 'Screens/advert.dart';
import 'Screens/favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: Ink(
            decoration: const ShapeDecoration(
              color: Color.fromARGB(255, 90, 226, 235),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
          appBar: AppBar(
            actions: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border)))
            ],
            title: Text("Addboard"),
          )),
    );
  }
}
