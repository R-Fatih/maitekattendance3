import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ColorsItems.light,
        //
        appBar: AppBar(
          backgroundColor: ColorsItems.littleDark,
          title: const Center(
            child: Text(
              'Merhaba',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25, /*fontStyle:*/
              ),
            ),
          ),
        ),
        body: const LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 200, width: 200, child: Image.asset('assets/anıt.png')),
          ),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          SizedBox(width: 250, height: 50, child: ElvButton.Ogrenci),
          const SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 50,
            child: ElvButton.Ogretmen,
          ),
          const SizedBox(
            height: 110,
            width: 100,
          ),
          Image.asset('assets/logo.png')
        ],
      ),
    );
  }
}

class ElvButton {
  static ElevatedButton Ogrenci = ElevatedButton(
    onPressed: () {/*Buraya fonksiyonu yaz */},
    style:
        ElevatedButton.styleFrom(backgroundColor: ColorsItems.buttonBackground),
    child: const Text(
      'Öğrenci Girişi',
      style: TextStyle(color: Colors.black),
    ),
  );
  static ElevatedButton Ogretmen = ElevatedButton(
    onPressed: () {/*Buraya fonksiyonu yaz */},
    style:
        ElevatedButton.styleFrom(backgroundColor: ColorsItems.buttonBackground),
    child: const Text(
      'Öğretmen Girişi',
      style: TextStyle(color: Colors.black),
    ),
  );
}

class ColorsItems {
  static const Color light = Color(0xffFEF2C7);
  static const Color littleDark = Color(0xffFCE58E);
  static const Color buttonBackground = Color(0xffFACB1E);
}
