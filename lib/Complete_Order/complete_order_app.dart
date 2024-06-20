import 'package:flutter/material.dart';

void main() {
  runApp(const CompleteOrderMain());
}

class CompleteOrderMain extends StatelessWidget {
  const CompleteOrderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'CompleteOrder': (context) => const CompleteOrderMain(),
      },
      home: const CompleteOrderApp(),
    );
  }
}

class CompleteOrderApp extends StatelessWidget {
  const CompleteOrderApp({super.key});

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
                    const Positioned( // LETAK TEKS CONGRATULATION
                      left: 202,
                      top: 248,
                      child: SizedBox(
                        width: 330, // 315
                        height: 55, // 44
                        child: Text(
                          'Congratulation',
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
                    const Positioned( // LETAK TEKS YOU SUCCESSFULLY COMPLETE THE PAYMENT
                      left: 183,
                      top: 357,
                      child: SizedBox(
                        width: 353,
                        height: 65,
                        child: Text(
                          'You succesfully complete the payment',
                          textAlign: TextAlign.center,
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
                      left: 219,
                      top: 502,
                      child: Container(
                        width: 281,
                        height: 281,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("images/check(tick).png"),
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
