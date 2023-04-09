import 'package:flutter/material.dart';
import 'package:maitekattendance3/main_page.dart';

import 'enroll_page.dart';

class EnrollStudent extends StatelessWidget {
  const EnrollStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageViewEnrollStudent(),
    );
  }
}

//PageView dan extend edemedim.
class PageViewEnrollStudent extends StatelessWidget {
  const PageViewEnrollStudent({super.key});

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
              'Öğrenci Kayıt Ekranı',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25, /*fontStyle:*/
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 75,
                  width: 100,
                ),
                AspectRatio(
                  aspectRatio: 16 / 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/anıt.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'İsim'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Soyisim'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Telefon No'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Öğrenci No'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Şifre'),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 250, height: 50, child: StudentEnrollmentButton()),
                const SizedBox(
                  height: 50,
                  width: 100,
                ),
                SizedBox(
                    height: 30,
                    width: 200,
                    child: Image.asset('assets/logo.png')),
                const SizedBox(
                  width: 170,
                  child: Divider(
                    height: 10,
                    color: ColorsItems.dividerBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StudentEnrollmentButton extends StatelessWidget {
  const StudentEnrollmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainPage())),

      style: ElevatedButton.styleFrom(
          backgroundColor: ColorsItems.buttonBackgroundYellow),
      //BORDER RADIUS EKLE - YUVARLAK KENARLI BUTON
      //BUTONA OUTLINE EKLE
      child: const Text(
        'Kayıt Ol!',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
