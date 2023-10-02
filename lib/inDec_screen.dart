import 'package:flutter/material.dart';
import 'controller/home_controller.dart';
import 'package:get/get.dart';

class InDecScreen extends StatelessWidget {
  const InDecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman InDecScreen'),
      ),
      body: Center(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  hc.increase();
                },
                icon: Icon(Icons.add)),
            Spacer(),
            Obx(() => Text(hc.x.toString())),
            Spacer(),
            IconButton(
                onPressed: () {
                  hc.decrease();
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
