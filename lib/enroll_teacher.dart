import 'package:flutter/material.dart';

import 'enroll_page.dart';
import 'enroll_student.dart';

class EnrollTeacher extends StatelessWidget {
  const EnrollTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageViewEnrollTeacher(),
    );
  }
}

//PageView dan extend edemedim.
class PageViewEnrollTeacher extends StatelessWidget {
  const PageViewEnrollTeacher({super.key});

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
              'Eğitmen Kayıt Ekranı',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25, /*fontStyle:*/
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
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
                          border: OutlineInputBorder(),
                          labelText: 'Eğitmen No'),
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
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                        width: 250, height: 50, child: EnrollmentButton()),
                  ),
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
      ),
    );
  }
}
