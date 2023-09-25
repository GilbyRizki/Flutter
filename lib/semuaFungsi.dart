import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class SemuaFungsi extends StatelessWidget {
  const SemuaFungsi({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua Fungsi'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              child: Column(children: [
                Container(
                    color: const Color.fromARGB(255, 255, 17, 0),
                    width: 500,
                    child: Text('Jumlah Siswa di Kelas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18))),
                Row(
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
                GetBuilder<HomeController>(builder: (hc) {
                  return Text(hc.nama);
                }),
                Obx(() => Row(
                      children: [
                        Text(hc.isOpen.value ? 'Buka' : 'Tutup'),
                        Spacer(),
                        Switch(
                            value: hc.isOpen.value,
                            inactiveThumbColor: Colors.red,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              hc.setIsOpen(value);
                            }),
                      ],
                    )),
              ]),
            ),
            Text('Nama Siswa', style: TextStyle(fontSize: 18)),
            Expanded(
                child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: hc.SiswaName.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Text('${hc.SiswaName.value[index]}'),
                  );
                },
              ),
            )),
            Text('Nama Mata Pelajaran', style: TextStyle(fontSize: 18)),
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
            )),
          ],
        ),
      ),
    );
  }
}
