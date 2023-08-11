import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(child: Text("Продам гараж")),
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
          )),
    );
  }
}
