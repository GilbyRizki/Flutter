import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class GantiKelas extends StatelessWidget {
  const GantiKelas({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganti Nama Kelas'),
      ),
      body: Column(
        children: [
          TextField(
            controller: hc.editKelas,
            decoration: InputDecoration(labelText: 'Masukan Nama Kelas'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                hc.EditKelas(hc.editKelas.text);
              },
              child: Text('Submit')),
          SizedBox(
            height: 10,
          ),
          Obx(
            () => Text(hc.kelas.value, style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
