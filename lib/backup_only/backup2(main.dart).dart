// apa yang harus saya lakukan agar ketika saya mengetik sesuatu di Email dan Password tersimpan di Firebase (firestore database). Saya sudah menyiapkan node.js, firebase tools dan sudah login.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prj_uas_d1_24/SignUp.dart';
import 'package:prj_uas_d1_24/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginAppTest(), // Awal APP YANG DIJALANKAN
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        '/Login': (context) => const LoginAppTest(),
        '/SignApp': (context) => const SignApp(),
      },
    );
  }
}

class LoginAppTest extends StatefulWidget {
  const LoginAppTest({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginAppTest> {
  final TextEditingController _emailController = TextEditingController(); // untuk menangani inputan email (kelas TextEditingController digunakan untuk mengontrol teks yang dimaksukkan dalam TextField)
  final TextEditingController _passwordController = TextEditingController(); // untuk menangani inputan password
  String _message = '';
  // final = Kata kunci ini digunakan untuk membuat variabel yang nilainya tidak dapat diubah setelah diinisialisasi. Dalam konteks ini, final memastikan bahwa _emailController dan _passwordController selalu merujuk ke instance TextEditingController yang sama setelah diinisialisasi. Namun, properti dari objek tersebut masih bisa diubah.
  // _emailController dan _passwordController adalah variabel yang merupakan instance dari TextEditingController. Mereka digunakan untuk mengontrol dan mengelola teks yang dimasukkan oleh pengguna dalam TextField untuk email dan password.
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  // Future<void> pada baris 53 menunjukkan bahwa fungsi _saveDataToFirestore adalah sebuah fungsi asinkron yang tidak mengembalikan nilai void. Fungsi ini menggunakan async dan await untuk menangani operasi asinkron, dalam hal ini adalah penyimpanan data ke Firestore
  Future<void> _saveDataToFirestore() async { // FUNGSI INI BERFUNGSI UNTUK MENYIMPAN DATA FIREBASE
    String email = _emailController.text;
    String password = _passwordController.text;
  // async menandakan bahwa fungsi ini mengandung operasi asinkron dan memungkinkan penggunaan await di dalamnya
  // await digunakan untuk menunggu penyelesaian operasi asinkron sebelum melanjutkan eksekusi kode berikutnya.
    DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(email).get();
    if (userDoc.exists) {
      setState(() {
        _message = 'Email sudah terdaftar di firestore database';
      });
    } else {
      await FirebaseFirestore.instance.collection('users').doc(email).set({ // untuk menyimpan data ke koleksi users dengan dokumen yang diidentikasi oleh email pengguna
        'email': email, // pada baris 60 dan 61 ini mengambil teks yang dimasukkan oleh pengguna ke dalam TextField yang dikontrol oleh _emailController dan _passwordController yang terkait dengan TextEditingController, dan menyimpannya dalam variabel email dan password.
        'password': password,
        'timestamp': FieldValue.serverTimestamp(), // menambahkan timestamp field untuk waktu yang lebih akurat (waktu saat ini)
      });

      setState(() { // setState digunakan untuk mengupdate pesan yang ditampilkan kepada pengguna
        _message = 'Data anda tersimpan di firestore database'; // menampilkan pesan yang diupdate oleh _message (_message adalah sebuah variabel bertipe String yang digunakan untuk menyimpan pesan yang akan ditampilkan kepada pengguna. Dalam konteks kode di atas,  _message digunakan untuk menampilkan pesan konfirmasi bahwa data pengguna (email dan password) telah berhasil disimpan ke dalam Firestore database.)
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                      left: 327.5,
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
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 79.5,
                      top: 900,
                      child: InkWell(
                        // ketika di pencet atau di klik, tersimpan di firestore database. 
                        // Ketika fungsi `_saveDataToFirestore` berhasil menyimpan data ke Firestore, nilai `_message` diubah menjadi "Data anda tersimpan di firestore database" dan `setState` dipanggil untuk memperbarui UI. Ini menyebabkan teks yang ditampilkan di widget `Text` berubah sesuai dengan nilai `_message`, memberikan umpan balik visual kepada pengguna bahwa data mereka telah berhasil disimpan.
                        onTap: _saveDataToFirestore,
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
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
                            side: const BorderSide(
                                width: 1, color: Color(0xFFF1F5F8)),
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
                          color: Colors.black.withOpacity(0.6000000238418579),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 205,
                      top: 1264,
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, '/SignApp'),
                        child: const SizedBox(
                          width: 350,
                          height: 50,
                          child: Text(
                            "Don't have an account? Sign Up",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 228.5,
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
                      top: 500,
                      child: Column(
                        children: [
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
                                        side: BorderSide(
                                            width: 1, color: Color(0xFFF1F5F8)),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 29,
                                  child: SizedBox(
                                    width: 500,
                                    height: 60,
                                    child: TextField(
                                      controller: _emailController, // LETAK EMAIL CONTROLLER (ketika kita memanggil _emailController, kita akan mendapatkan teks terbaru yang dimasukkan oleh pengguna yang telah di disimpan oleh variabel email dan password)
                                      decoration: const InputDecoration(
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      cursorColor: Colors.black,
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
                                        side: BorderSide(
                                            width: 1, color: Color(0xFFF1F5F8)),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 22,
                                  child: SizedBox(
                                    width: 500,
                                    height: 60,
                                    child: TextField(
                                      controller: _passwordController, // LETAK PASSWORD CONTROLLER
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      cursorColor: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            _message, // TAMPILAN MESSAGE (pada bagian ini _message digunakan untuk memberikan sinyal atau pesan konfiramsi kepada pengguna bahwa email dan password telah tersimpan di database firestore)
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
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
    );
  }
}