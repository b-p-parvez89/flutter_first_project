import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.arrow_right_sharp),
        ],
        leading: const Icon(Icons.arrow_left_sharp),
      ),
      body: Center(
        child: Container(
          height: size.height / 3,
          width: size.width / 2,
          color: Colors.red,
          child: const Center(child: Text("Hello Word")),
        ),
      ),
    );
  }
}
