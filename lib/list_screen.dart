import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman List Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: hc.namaSiswa,
            decoration: InputDecoration(labelText: 'Input nama'),
          ),
          ElevatedButton(
              onPressed: () {
                hc.tambahKeList(hc.namaSiswa.text);
              },
              child: Text('Submit')),
          Expanded(
              child: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: hc.SiswaName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${hc.SiswaName.value[index]}'),
                );
              },
            ),
          )),
          GetBuilder<HomeController>(builder: (hc) {
            return Text(hc.nama);
          }),
        ],
      ),
    );
  }
}
