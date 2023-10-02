import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController namacontroller = TextEditingController();
  TextEditingController namaSiswa = TextEditingController();
  TextEditingController namaMatpel = TextEditingController();
  TextEditingController jnsMatpel = TextEditingController();
  TextEditingController editKelas = TextEditingController();

  static final HomeController _instance = HomeController._internal();

  factory HomeController() {
    return _instance;
  }

  HomeController._internal();

//Reactive state
  RxBool isOpen = RxBool(true);
  RxInt x = 0.obs;
  RxList SiswaName = RxList([]);
  RxMap<String, String> ListMatpel = RxMap<String, String>();
  final kelas = 'Kelas'.obs;

  // RxString nama = RxString('');
  // Rx<String> nama = Rx<String>('');
  // final nama = ''.obs;

  // void ChangeName(String nm) {
  //   nama.value = nm;
  //   print(nama.value);
  //   Get.snackbar('nilai dari variabel nama adalah:', nama.value,
  //       snackPosition: SnackPosition.TOP, duration: Duration(seconds: 3));
  // }

//simple state
  String nama = '';

  void gantiNilai(String nm) {
    nama = nm;
    update();
  }

  void setIsOpen(bool Open) {
    isOpen(Open);
    print(isOpen.value);
  }

  void increase() {
    if (x.value == 35) {
      isOpen(false);
      return;
    }
    x.value++;
  }

  void decrease() {
    if (x.value - 1 <= 0) return;
    if (x.value <= 35) {
      isOpen(true);
    }
    x.value--;
  }

  void tambahKeList(String nama) {
    SiswaName.add(nama);
    // print(SiswaName.value);
  }

  void addSiswa(String nama) {
    SiswaName.add(nama);
    namaSiswa.text = '';
    // print(SiswaName.value);
  }

  void removeSiswa(int index) {
    SiswaName.removeAt(index);
  }

  void addMatpel(String namaMatpel, String jnsMatpel) {
    ListMatpel[namaMatpel] = jnsMatpel;
    // print(ListMatpel.value);
  }

  void EditKelas(String editNamaKelas) {
    kelas.value = editNamaKelas;
  }
}
