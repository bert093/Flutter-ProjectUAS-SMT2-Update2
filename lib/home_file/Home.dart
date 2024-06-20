import 'package:flutter/material.dart';
import 'package:prj_uas_d1_24/main.dart';

class HomeAppMain extends StatelessWidget {
  const HomeAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Login': (context) => const LoginApp(), // tambahin LoginApp dari file main.dart
        '/Home': (context) => const HomeAppMain(), // menggunakan navigasi ke class rootnya
      },
      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
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
                    Positioned(
                      left: 38,
                      top: 51,
                      child: Container(
                        width: 142,
                        height: 56,
                        child: const Stack(
                          children: [
                            Positioned(
                              // LETAK TEKS HELLO
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
                              // LETAK TEKS SYAHRILL KP
                              left: 69,
                              top: 27,
                              child: SizedBox(
                                width: 200, // Awal 73
                                height: 30, // Awal 15
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
                      left: 30, // LETAK PROFILE PICTURE (manual edit)
                      top: 50,
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle, // AGAR GAMBAR PROFILE PICTURE MENJADI LINGKARAN
                          image: DecorationImage(
                            image: NetworkImage("images/Profile-Picture.jpg"),
                            fit: BoxFit.fill,
                          ),
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
                              // TextField search bar MAU CARI APA
                              left: 81,
                              top: 18, // AWAL 32
                              child: SizedBox(
                                width: 450, // AWAL 140
                                height: 30, // AWAL 19
                                child: TextField(
                                  // TEXTFIELD SEARCH BAR
                                  decoration: InputDecoration(
                                    hintText: 'Mau Cari Apa?',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFA2A5AA),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Positioned( // letak search bar image
                              left: 21,
                              top: 24,
                              child: Container(
                                width: 36,
                                height: 36,
                                child: const Icon(
                                  Icons.search_rounded,
                                  size: 36,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 45,
                      top: 822,
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
                      top: 1200,
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
                      top: 822,
                      child: Container(
                        width: 300,
                        height: 281,
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
                      top: 1203,
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
                      // LETAK TEKS HOME
                      left: 172,
                      top: 1910,
                      child: Container(
                        child: const Row(
                          // teks home, wishlist, cart menjadi horizontal
                          // mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 61,
                              height: 30,
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
                            SizedBox(width: 91), // LETAK TEKS WISHLIST
                            SizedBox(
                              width: 84,
                              height: 30,
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
                            SizedBox(width: 91), // LETAK TEKS CART
                            SizedBox(
                              width: 42,
                              height: 30,
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
                      // Letak Lines 3 Image
                      left: 642,
                      top: 57,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/lines.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      // LETAK TEKS POCO X6 PRO 5G
                      left: 108,
                      top: 1123,
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
                      // LETAK TEKS SAMSUNG GALAXY ULTRA
                      left: 420, // AWAL 440
                      top: 1123,
                      child: SizedBox(
                        width: 200, // AWAL 175
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
                      // LETAK TEKS ADVAN WORKPLUS
                      left: 109,
                      top: 1511,
                      child: SizedBox(
                        width: 270,
                        height: 30, // AWAL 22
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
                      // LETAK TEKS DBE GM 500
                      left: 462,
                      top: 1510,
                      child: SizedBox(
                        width: 180, // AWAL 132
                        height: 30, // AWAL 22
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
                      // LETAK GAMBAR ADVAN WORKPLUS
                      left: 45,
                      top: 1203,
                      child: Container(
                        width: 290,
                        height: 290,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/Advan.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // LETAK GAMBAR SAMSUNG GALAXY S24 ULTRA
                      left: 426,
                      top: 866,
                      child: Container(
                        width: 188,
                        height: 188, // AWAL 188
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/GalaxyS24.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // LETAK GAMBAR POCO X6
                      left: 101,
                      top: 870,
                      child: Container(
                        width: 188,
                        height: 188,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/PocoX6.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // LETAK GAMBAR HOME NAVBAR KARENA CHILD MENGGUNAKAN ROW MAKA ICONSNYA MENGIKUTI DARI POSITIONEDNYA
                      left: 170, // AWAL 175
                      top: 1847,
                      child: Row(
                        children: [
                          // const Opacity(
                          //   opacity: 1,
                          //   child: Icon(
                          //     Icons.home, // Ikon home
                          //     size: 58, // Ukuran ikon
                          //     color: Colors.black, // Warna ikon
                          //   ),
                          // ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("images/home.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 108), // LETAK GAMBAR HEART 2 (wishlist)
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("images/heart(2).png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 108), // LETAK GAMBAR SHOPPING CART
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("images/shopping-cart.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 64,
                      top: 242,
                      child: Container(
                        width: 575,
                        height: 370,
                        decoration:
                        const BoxDecoration(color: Color(0xFFC0EAFC)),
                      ),
                    ),
                    Positioned(
                      // LETAK GAMBAR GALAXY S24 ULTRA PALING ATAS
                      left: 269,
                      top: 289,
                      child: Container(
                        width: 467,
                        height: 245,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "images/galaxy-s24-ultra-share-image-removebg.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      // LETAK TEKS SAMSUNG GALAXY S24 ULTRA (TEKS ATAS)
                      left: 85, // AWAL 85
                      top: 365,
                      child: SizedBox(
                        width: 350, // AWAL 229
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
                        width: 130, // AWAL 108
                        height: 50, // AWAL 30
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
                      // LETAK TEKS GALAXY AI IS HERE
                      left: 103,
                      top: 409,
                      child: SizedBox(
                        width: 210,
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
                      // AI ICONS
                      left: 207, // AWAL 199
                      top: 409,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "images/google-gemini-icon.png"), // ai icons pada teks galaxy ai is here
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // LETAK GAMBAR DBE GM500 (headset)
                      left: 429,
                      top: 1242,
                      child: Container(
                        width: 198,
                        height: 185,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/Dbe-Gm500.png"),
                            fit: BoxFit.fill,
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