import 'package:flutter/material.dart';
// import 'package:prj_uas_d1_24/backup_only/backup.dart';
// import 'package:prj_uas_d1_24/Address/add_your_address.dart';
import 'package:prj_uas_d1_24/main.dart';

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/CheckoutMain': (context) => const CheckoutApp(),
        '/Login': (context) => const LoginApp(),
      },
      home: const CheckoutAppNew(),
    );
  }
}

class CheckoutAppNew extends StatelessWidget {
  const CheckoutAppNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 720,
                height: 1450,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -65,
                      top: 242,
                      child: Container(
                        width: 28,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15,
                              top: 21,
                              child: Transform(
                                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.82),
                                child: Container(
                                  width: 19.10,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 4,
                                        strokeAlign:
                                        BorderSide.strokeAlignCenter,
                                        color: Color(0xFF7B8081),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned( // AWAL TEKS ADD YOUR ADDRESS
                      left: 168,
                      top: 52,
                      child: SizedBox(
                        width: 450, // AWAL 385
                        height: 50,
                        child: Text(
                          'Add Your Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 214,
                      child: Container(
                        width: 635,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 409,
                      child: Container(
                        width: 635,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 49,
                      child: Container(
                        width: 58,
                        height: 58,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned( // ICON ARROW BACK PALING ATAS
                      left: 50,
                      top: 55,
                      child: Container( // UKURANNYA SAYA SAMAKAN AGAR TIDAK RIBET
                        width: 45,
                        height: 45,
                        child: const Opacity( // MENAMBAHKAN OPACITY JIKA PINGIN DI UBAH
                          opacity: 1,
                          child: Icon(
                            Icons.arrow_back_ios, // LETAK ICONSNYA
                            size: 45,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS COUNTRY
                      left: 37,
                      top: 158,
                      child: SizedBox(
                        width: 108,
                        height: 36,
                        child: Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS FULL NAME
                      left: 36,
                      top: 350,
                      child: SizedBox(
                        width: 137,
                        height: 35,
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS CITY
                      left: 37,
                      top: 571,
                      child: SizedBox(
                        width: 55,
                        height: 35,
                        child: Text(
                          'City',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 36,
                      top: 803,
                      child: SizedBox(
                        width: 350, // AWAL 224
                        height: 35, // AWAL 28
                        child: Text(
                          'Delivery Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS NUMBER WE CAN CALL
                      left: 37,
                      top: 989,
                      child: SizedBox(
                        width: 269,
                        height: 30,
                        child: Text(
                          'Number we can call',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS POSTAL CODE
                      left: 371,
                      top: 571,
                      child: SizedBox(
                        width: 350, // AWAL 164
                        height: 28,
                        child: Text(
                          'Postal Code',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 62,
                      top: 252,
                      child: SizedBox(
                        width: 585, // AWAL 135
                        height: 40, // AWAL 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Indonesia',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1, // TAMBAHKAN HEIGHT AGAR TEKS PADA TEXTSTYLE DAPAT DIRENDER DENGAN BENAR
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS DAFFA KURNIAWAN
                      left: 62,
                      top: 447,
                      child: SizedBox(
                        width: 585, // AWAL 224
                        height: 40, // AWAL 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Daffa Kurniawan',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 853,
                      child: Container(
                        width: 635,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS SIDOARJO INDONESIA
                      left: 62,
                      top: 891,
                      child: SizedBox(
                        width: 585, // AWAL 258
                        height: 40, // AWAL 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Sidoarjo, Indonesia',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 1039,
                      child: Container(
                        width: 421,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 1039,
                      child: Container(
                        width: 165,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS NOMER
                      left: 57,
                      top: 1070, // AWAL 1077
                      child: SizedBox(
                        width: 130, // AWAL 55
                        height: 40, // AWAL 27
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '+62',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 274,
                      top: 1077,
                      child: SizedBox(
                        width: 380, // AWAL 198
                        height: 40, // 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned( // LETAK ICONS HADAP KANAN
                      left: 603,
                      top: 290,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                        child: Container(
                          width: 40,
                          height: 40,
                          // child: const Icon(
                          //   Icons.arrow_forward_ios_rounded,
                          //   size: 40,
                          //   color: Colors.black,
                          // ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 630,
                      child: Container(
                        width: 300,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS SIDOARJO
                      left: 62,
                      top: 668,
                      child: SizedBox(
                        width: 260, // AWAL 112
                        height: 40, // AWAL 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Sidoarjo',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 371,
                      top: 630,
                      child: Container(
                        width: 300,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 397,
                      top: 668,
                      child: SizedBox(
                        width: 255, // AWAL 71
                        height: 40, // AWAL 28
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '8172',
                            hintStyle: TextStyle(
                              color: Color(0xFF81818C),
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Color(0xFF81818C),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 73,
                      top: 1263,
                      child: Container(
                        width: 561,
                        height: 94,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 561,
                                height: 94,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFF1F5F8)),
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                ),
                              ),
                            ),
                            Positioned( // LETAK TEKS CONTINUE TO PAYMENT
                              left: 119,
                              top: 30,
                              child: SizedBox(
                                width: 450, // AWAL 324
                                height: 45, // AWAL 33
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(context, '/Login'), // PENAMBAHAN RUTE DAN INKWELL
                                  child: const Text(
                                    'Continue To Payment',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}