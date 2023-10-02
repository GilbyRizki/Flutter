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
                    child: Obx(
                      () => Text(hc.kelas.value,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18)),
                    )),
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
            SizedBox(
              height: 10,
            ),
            Container(
                width: 500,
                color: const Color.fromARGB(255, 255, 17, 0),
                child: Text(
                  'Nama Siswa',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )),
            Expanded(
                child: Container(
              width: 500,
              color: Colors.orange,
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: hc.SiswaName.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('${hc.SiswaName[index]}'),
                    );
                  },
                ),
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 500,
                color: const Color.fromARGB(255, 255, 17, 0),
                child: Text('Nama Mata Pelajaran',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18))),
            Expanded(
                child: Container(
              color: Colors.orange,
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
              ),
            )),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
