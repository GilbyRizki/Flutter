import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/gantiKelas.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/list_screen.dart';
import 'package:getx/semuaFungsi.dart';
import 'inDec_screen.dart';
import 'mapel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: ()=>MyApp()),
        GetPage(name: "/indec", page: ()=>InDecScreen()),
        GetPage(name: "/listsc", page: ()=>ListScreen()),
        GetPage(name: "/mapel", page: ()=>InputMapel()),
        GetPage(name: "/gantiKelas", page: ()=>GantiKelas()),
        GetPage(name: "/semuaFungsi", page: ()=>SemuaFungsi()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}
