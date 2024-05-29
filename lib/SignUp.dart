import 'package:flutter/material.dart';

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: { // Rutenya
        '/SignApp': (context) => const SignApp(),
      },
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 720,
                  height: 1350,
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
                                  transform: Matrix4.identity()
                                    ..translate(0.0, 0.0)
                                    ..rotateZ(0.82),
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
                      Positioned(
                        left: 80,
                        top: 1116,
                        child: Container(
                          width: 561,
                          height: 94,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -15,
                        top: -10,
                        child: Container(
                          width: 746,
                          height: 273,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF17181C),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -15,
                        top: -10,
                        child: Container(
                          width: 746,
                          height: 273,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      const Positioned( // Bagian Text Sign Up
                        left: 302,
                        top: 1144,
                        child: SizedBox(
                          width: 118,
                          height: 38,
                          child: Text(
                            'Sign Up',
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
                      Positioned( // Bagian "Already have an account? Sign In"
                        left: 200,
                        top: 1264,
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, '/Login'),
                          child: const SizedBox(
                            width: 350,
                            height: 30,
                            child: Text(
                              'Already have an account? Sign In',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned( // Bagian Gambar Logonya
                        left: 229,
                        top: 7,
                        child: Container(
                          width: 263,
                          height: 263,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("images/satu.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 341,
                        child: Column(
                          children: [
                            Container(
                              width: 550,
                              height: 116,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 550,
                                      height: 116,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE6E9EB),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned( // Bagian First name
                                    left: 16,
                                    top: 29,
                                    child: SizedBox(
                                      width: 500,
                                      height: 60,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'First name',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        cursorColor: Colors.black, // Warna cursor color (blink-blink)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              width: 550,
                              height: 116,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 550,
                                      height: 116,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE6E9EB),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned( // Bagian Last name
                                    left: 16,
                                    top: 29,
                                    child: SizedBox(
                                      width: 500,
                                      height: 60,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Last name',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        cursorColor: Colors.black, // Warna cursor color (blink-blink)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              width: 550,
                              height: 116,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 550,
                                      height: 116,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE6E9EB),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned( // Bagian Email
                                    left: 16,
                                    top: 29,
                                    child: SizedBox(
                                      width: 500,
                                      height: 60,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Email',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        cursorColor: Colors.black, // Warna cursor color (blink-blink)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              width: 550,
                              height: 91,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 550,
                                      height: 91,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE6E9EB),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned( // Bagian Password
                                    left: 16,
                                    top: 22,
                                    child: SizedBox(
                                      width: 500,
                                      height: 60,
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        cursorColor: Colors.black, // Warna cursor color (blink-blink)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              width: 550,
                              height: 91,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 550,
                                      height: 91,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFE6E9EB),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned( // Bagian Confirm Password
                                    left: 16,
                                    top: 22,
                                    child: SizedBox(
                                      width: 500,
                                      height: 60,
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: 'Confirm Password',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        cursorColor: Colors.black, // Warna cursor color (blink-blink)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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