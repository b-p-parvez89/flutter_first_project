import 'package:flutter/material.dart';
import 'package:flutter_first_project/homeController.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Increment"),
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
        child: Obx(() => Text(homeController.number.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
