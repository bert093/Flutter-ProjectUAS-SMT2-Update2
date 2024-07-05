import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Home(),
        ]),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 720,
          height: 2000,
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
              Positioned(
                left: 38,
                top: 51,
                child: Container(
                  width: 142,
                  height: 56,
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 69,
                        top: 8,
                        child: SizedBox(
                          width: 42,
                          height: 16,
                          child: Text(
                            'Hello,',
                            style: TextStyle(
                              color: Color(0xFFC8C8C8),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 69,
                        top: 27,
                        child: SizedBox(
                          width: 73,
                          height: 15,
                          child: Text(
                            'Syahril KP',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 64,
                top: 142,
                child: Container(
                  width: 560,
                  height: 84,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 560,
                          height: 84,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE6E9EB),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 81,
                        top: 32,
                        child: SizedBox(
                          width: 140,
                          height: 19,
                          child: Text(
                            'Mau Cari Apa?',
                            style: TextStyle(
                              color: Color(0xFFA2A5AA),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 24,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/36x36"),
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
                left: 45,
                top: 753,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE6E9EB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 378,
                top: 1127,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE6E9EB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 378,
                top: 753,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE6E9EB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 1127,
                child: Container(
                  width: 300,
                  height: 280,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE6E9EB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 175,
                top: 1829,
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF050409),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 172,
                top: 1910,
                child: Container(
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 61,
                        height: 18,
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(width: 91),
                      SizedBox(
                        width: 84,
                        height: 18,
                        child: Text(
                          'Wishlist',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(width: 91),
                      SizedBox(
                        width: 42,
                        height: 18,
                        child: Text(
                          'Cart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 642,
                top: 57,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/50x50"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 108,
                top: 1054,
                child: SizedBox(
                  width: 175,
                  height: 22,
                  child: Text(
                    'POCO X6 Pro 5G',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 431,
                top: 1773,
                child: SizedBox(
                  width: 193,
                  height: 22,
                  child: Text(
                    'Gigabyte aorus 17',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 440,
                top: 1054,
                child: SizedBox(
                  width: 175,
                  height: 50,
                  child: Text(
                    'Samsung Galaxy S24 Ultra 5G',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 109,
                top: 1428,
                child: SizedBox(
                  width: 173,
                  height: 22,
                  child: Text(
                    'Advan Workplus',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 462,
                top: 1428,
                child: SizedBox(
                  width: 132,
                  height: 22,
                  child: Text(
                    'Dbe Gm 500',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 1124,
                child: Container(
                  width: 290,
                  height: 290,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/290x290"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 434,
                top: 801,
                child: Container(
                  width: 188,
                  height: 188,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/188x188"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 89,
                top: 801,
                child: Container(
                  width: 188,
                  height: 188,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/188x188"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 175,
                top: 1847,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/50x50"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 108),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/50x50"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 108),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/50x50"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 64,
                top: 242,
                child: Container(
                  width: 575,
                  height: 370,
                  decoration: const BoxDecoration(color: Color(0xFFC0EAFC)),
                ),
              ),
              Positioned(
                left: 269,
                top: 289,
                child: Container(
                  width: 467,
                  height: 245,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/467x245"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 85,
                top: 365,
                child: SizedBox(
                  width: 229,
                  height: 30,
                  child: Text(
                    'Galaxy S24 Ultra',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 75,
                top: 676,
                child: SizedBox(
                  width: 108,
                  height: 30,
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 103,
                top: 409,
                child: SizedBox(
                  width: 193,
                  height: 31,
                  child: Text(
                    'Galaxy Ai    is Here',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 199,
                top: 409,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/24x24"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 429,
                top: 1174,
                child: Container(
                  width: 198,
                  height: 185,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/198x185"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 378,
                top: 1476,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE7EAEC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 420,
                top: 1532,
                child: Container(
                  width: 215,
                  height: 171,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/215x171"),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 1476,
                child: Container(
                  width: 300,
                  height: 283,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE6E9EB),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF1F5F8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 1546,
                child: Container(
                  width: 219,
                  height: 143,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/219x143"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 85,
                top: 1773,
                child: SizedBox(
                  width: 197,
                  height: 24,
                  child: Text(
                    'OnePlus Buds Ace',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}