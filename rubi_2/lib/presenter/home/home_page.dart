import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rubi_2/presenter/home/widgets/body_home.dart';

import './home_controller.dart';
import 'widgets/custom_drawer.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rubi"),
        backgroundColor: const Color.fromARGB(255, 132, 25, 25),
      ),
      body: const BodyHome(),
      drawer: const CustomDrawer(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 99, 77, 77),
        label: const Text(
          "Action",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerEnableOpenDragGesture: false,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 132, 25, 25),
        child: Container(
          height: 50,
        ),
      ),
    );
  }
}
