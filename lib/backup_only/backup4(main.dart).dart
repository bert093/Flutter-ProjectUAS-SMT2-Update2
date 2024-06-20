// apa yang harus saya lakukan agar ketika saya mengetik sesuatu di Email dan Password tersimpan di Firebase (firestore database). Saya sudah menyiapkan node.js, firebase tools dan sudah login.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prj_uas_d1_24/SignUp.dart';
import 'package:prj_uas_d1_24/firebase_options.dart';
import 'package:prj_uas_d1_24/Home.dart'; // Import the Home screen

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
        '/HomeApp': (context) => const HomeApp(), // penambahan rute ke Home
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
  void dispose() { // Metode dispose ini adalah bagian dari kelas _LoginState, yang merupakan state dari widget LoginAppTest. Jadi, ketika widget LoginAppTest dihapus dari pohon widget (misalnya, ketika pengguna menavigasi ke layar lain atau aplikasi ditutup), metode dispose akan dipanggil.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose(); // super.dispose();: Memanggil metode dispose dari kelas induk (State) untuk memastikan bahwa semua pembersihan yang diperlukan oleh kelas induk juga dilakukan.
  }

  Future<void> _saveDataToFirestore() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Periksa apakah ada dokumen apa pun di koleksi 'users'
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').get(); // QuerySnapshot adalah kelas yang menyimpan hasil pencarian data di Firestore.
    if (querySnapshot.docs.isNotEmpty) { 
      // jika querySnapshot.docs.isNotEmpty adalah true, maka kode di dalam blok if akan dijalankan.
      setState(() {
        _message = 'Data sudah ada di firestore database';
      });
    } else {
      // Tambahkan dokumen baru jika tidak ada dokumen di koleksi 'users'
      await FirebaseFirestore.instance.collection('users').doc(email).set({
        // await memastikan bahwa eksekusi kode berikutnya (setState) hanya akan berjalan setelah operasi penyimpanan selesai.
        'email': email,
        'password': password,
        'timestamp': FieldValue.serverTimestamp(), // menambahkan timestamp field untuk waktu yang lebih akurat (waktu saat ini)
      });

      setState(() {
        _message = 'Data anda tersimpan di firestore database';
      });
    }

    // Navigate to Home screen after saving data
    Navigator.pushNamed(context, '/HomeApp'); // RUTE KE HOME (ATAU HomeApp)
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
                      left: 327, // AWAL 327.5
                      top: 242,
                      child: Container(
                        width: 28,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15, // AWAL 15
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
                    Positioned( // POSISI PERSEGI PANJANG TEKS LOGIN
                      left: 79.5, // AWAL 79.5
                      top: 900,
                      child: InkWell(
                        // ketika di pencet atau di klik, tersimpan di firestore database.
                        // Ketika fungsi `_saveDataToFirestore` berhasil menyimpan data ke Firestore, nilai `_message` diubah menjadi "Data anda tersimpan di firestore database" dan `setState` dipanggil untuk memperbarui UI. Ini menyebabkan teks yang ditampilkan di widget `Text` berubah sesuai dengan nilai `_message`, memberikan umpan balik visual kepada pengguna bahwa data mereka telah berhasil disimpan.
                        onTap: _saveDataToFirestore,
                        child: Container(
                          width: 561,
                          height: 94,
                          decoration: ShapeDecoration( // DEKORASI PERSEGI PANJANG TEKS LOGIN
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
                    Positioned( // POSISI WARNA LOGONYA (PERSEGI PANJANG WARNA 0XFF17181C)
                      left: -15, // AWAL -15
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
                    Positioned( // POSISI WARNA BACKGROUND DARI WARNA 0XFF17181C
                      left: -15,
                      top: -10,
                      child: Container(
                        width: 746,
                        height: 273,
                        decoration: ShapeDecoration( // DEKORASI PERSEGI PANJANG DARI WARNA 0XFF17181C
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
                        onTap: () => Navigator.pushNamed(context, '/SignApp'), // RUTE KE HOME (ATAU SIGNAPP)
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
                    Positioned( // GAMBAR LOGONYA
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
                                      controller:
                                          _emailController, // LETAK EMAIL CONTROLLER (ketika kita memanggil _emailController, kita akan mendapatkan teks terbaru yang dimasukkan oleh pengguna yang telah di disimpan oleh variabel email dan password)
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
                                      controller:
                                          _passwordController, // LETAK PASSWORD CONTROLLER
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
                          Text(_message, // TAMPILAN MESSAGE (pada bagian ini _message digunakan untuk memberikan sinyal atau pesan konfirmasi kepada pengguna bahwa email dan password telah tersimpan di database firestore begitupun juga dengan kalau datanya sudah ada)
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