import 'package:flutter/material.dart';
import 'package:prj_uas_d1_24/Complete_Order/complete_order_app.dart';

class PaymentAppMain extends StatelessWidget {
  const PaymentAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Payment': (context) => const PaymentApp(),
        '/CompleteOrder': (context) => const CompleteOrderMain(),
      },
      home: const PaymentApp(),
    );
  }
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

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
                height: 1500,
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
                                        strokeAlign: BorderSide.strokeAlignCenter,
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
                    const Positioned( // LETAK TEKS PAYMENT METHODS
                      left: 165,
                      top: 55,
                      child: SizedBox(
                        width: 500, // AWAL 390
                        height: 60, // AWAL 44
                        child: Text(
                          'Payment Methods',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned( // LETAK PERSEGI DARI CARD NUMBER
                      left: 36,
                      top: 670,
                      child: Container(
                        width: 635,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                        child: const Padding( // CUSTOM PADDING DAN INPUTNYA
                          padding: EdgeInsets.all(30.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Card Number',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                            cursorColor: Colors.black,
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
                            side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 48,
                      top: 55,
                      child: Container(
                        width: 52,
                        height: 52,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 52,
                        ),
                      ),
                    ),
                    const Positioned(
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
                    const Positioned( // LETAK TEKS CARD NUMBER
                      left: 36,
                      top: 611,
                      child: SizedBox(
                        width: 181,
                        height: 35, // AWAL 27
                        child: Text(
                          'Card Number',
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
                    const Positioned( // LETAK TEKS DATE
                      left: 37,
                      top: 832,
                      child: SizedBox(
                        width: 80, // AWAL 62
                        height: 28,
                        child: Text(
                          'Date',
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
                      left: 371,
                      top: 832,
                      child: SizedBox(
                        width: 62,
                        height: 28,
                        child: Text(
                          'CCV',
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
                    Positioned( // ADD NEW METHODS PERSEGI
                      left: 36,
                      top: 1061,
                      child: Container(
                        width: 635,
                        height: 104,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned( // LETAK TEKS ADD NEW METHODS
                      left: 127,
                      top: 1099,
                      child: SizedBox(
                        width: 280, // AWAL 248 
                        height: 35, // AWAL 28
                        child: Text(
                          'Add New Methods',
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
                    Positioned( // DATE PERSEGI
                      left: 36,
                      top: 891,
                      child: Container(
                        width: 300,
                        height: 104,
                        padding: const EdgeInsets.all(30.0), // MENAMBAHKAN PADDING
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                        child: const TextField( // TEKTFIELD DAN TEXTSTYLENYA
                          decoration: InputDecoration(
                            hintText: 'Enter Date',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    Positioned( // LETAK CCV PERSEGI
                      left: 371,
                      top: 891,
                      child: Container(
                        width: 300,
                        height: 104,
                        padding: const EdgeInsets.all(30.0), // MENAMBAHKAN PADDING
                        decoration: const ShapeDecoration(
                          color: Color(0xFFE6E9EB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                          ),
                        ),
                        child: const TextField( // TEKTFIELD DAN TEXTSTYLENYA
                          decoration: InputDecoration(
                            hintText: 'Enter CCV',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 73,
                      top: 1293,
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
                                decoration: ShapeDecoration( // WARNA LATAR BELAKANG PERSEGI DARI TEKS COMPLETE ORDER
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(  // LETAK TEKS COMPLETE ORDER
                              left: 155, // AWAL 160
                              top: 30, // AWAL 30
                              child: SizedBox(
                                width: 242, // AWAL 242
                                height: 40, // AWAL 32
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(context, '/CompleteOrder'), // PENAMBAHAN RUTE DAN INKWELL
                                  child: const Text(
                                    'Complete Order',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 468,
                      child: Container(
                        width: 635,
                        height: 104,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 635,
                                height: 104,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFE6E9EB),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned( // LETAK OVAL BORDER (LINGKARAN OUTLINE) DARI TEKS OVO
                              left: 28,
                              top: 34,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(width: 2, color: Color(0xFF727274)),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned( // LETAK TEKS OVO
                              left: 91, // AWAL 91
                              top: 38, // AWAL 36
                              child: SizedBox(
                                width: 61, // AWAL 61
                                height: 35, // AWAL 28
                                child: Text(
                                  'OVO',
                                  style: TextStyle(
                                    color: Color(0xFF108DE8),
                                    fontSize: 30,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                            Positioned( // GAMBAR OVO
                              left: 480,
                              top: 26,
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("images/65e389789dce1-OVO.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 338,
                      child: Container(
                        width: 635,
                        height: 104,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 635,
                                height: 104,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFE6E9EB),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 28,
                              top: 34,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(width: 2, color: Color(0xFF727274)),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned( // LETAK TEKS DANA
                              left: 91, // AWAL 91
                              top: 38, // AWAL 36
                              child: SizedBox(
                                width: 80, // AWAL 69
                                height: 35, // AWAL 28
                                child: Text(
                                  'Dana',
                                  style: TextStyle(
                                    color: Color(0xFF0F87E0),
                                    fontSize: 30,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                            Positioned( // GAMBAR DANA
                              left: 468,
                              top: 17,
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("images/dana-indonesia-digital-w-1677628214_88c66dbd215c94077cb0.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 214,
                      child: Container(
                        width: 635,
                        height: 104,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 635,
                                height: 104,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFE6E9EB),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned( // MENGGUNAKAN TEKSSPAN (teksspan digunakan untuk menampilkan teks dengan gaya yang berbeda dalam satu widget Text.)
                              left: 91,
                              top: 36,
                              child: SizedBox(
                                width: 92, // AWAL 92
                                height: 38, // AWAL 32
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Pay',
                                        style: TextStyle(
                                          color: Color(0xFF1710B6),
                                          fontSize: 30,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          height: 1,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'pal',
                                        style: TextStyle(
                                          color: Color(0xFF81818C),
                                          fontSize: 30,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Positioned(
                            //   left: 607,
                            //   top: 36,
                            //   child: Transform(
                            //     transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                            //     child: Container(
                            //       width: 40,
                            //       height: 40,
                            //       decoration: const BoxDecoration(
                            //         image: DecorationImage(
                            //           image: NetworkImage("plus-black.png"),
                            //           fit: BoxFit.fill,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              left: 28,
                              top: 34,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(width: 2, color: Color(0xFF727274)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 471,
                              top: 28,
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("images/paypal1677275675_506c166f12e56f8400d7.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned( // LETAK GAMBAR PLUS ADD NEW METHODS
                      left: 60,
                      top: 1093,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: SizedBox(
                            width: 35, // MENGATUR LEBAR ICON
                            height: 35, // MENGATUR TINGGI ICON
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35, // MENGATUR UKURAN ICON
                            ),
                          ),
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