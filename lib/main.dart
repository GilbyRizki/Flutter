import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_2/home_screen.dart';
import 'package:getx_2/list_screen.dart';
import 'package:getx_2/semuaFungsi.dart';
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
