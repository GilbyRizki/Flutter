import 'package:flutter/material.dart';
import 'package:getx_2/controller/home_controller.dart';
import 'package:get/get.dart';

class InputMapel extends StatelessWidget {
  const InputMapel({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Input mapel'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: hc.namaMatpel,
              decoration: InputDecoration(labelText: 'Input Kode Mapel'),
            ),
            TextField(
              controller: hc.jnsMatpel,
              decoration: InputDecoration(labelText: 'Input Jenis Mapel'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  hc.addMatpel(hc.namaMatpel.text, hc.jnsMatpel.text);
                },
                child: Text('Submit')),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: hc.ListMatpel.length,
                itemBuilder: (context, index) {
                  String key = hc.ListMatpel.keys.elementAt(index);
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${key}'),
                        Text('${hc.ListMatpel[key]}'),
                      ]);
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
