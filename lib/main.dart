import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prj_uas_d1_24/Address/add_your_address.dart';
import 'package:prj_uas_d1_24/Complete_Order/complete_order_app.dart';
// import 'package:prj_uas_d1_24/Address/add_your_address.dart';
// import 'package:prj_uas_d1_24/Complete_Order/complete_order_app.dart';
import 'package:prj_uas_d1_24/payment/payment.dart';
// import 'package:prj_uas_d1_24/Address/add_your_address.dart';
import 'package:prj_uas_d1_24/signup_file/SignUp.dart';
import 'package:prj_uas_d1_24/firebase_options.dart';
import 'package:prj_uas_d1_24/home_file/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // inisialisasi binding widget {Memastikan bahwa binding Flutter telah diinisialisasi. Ini diperlukan sebelum memanggil metode asinkron initializeApp dari Firebase.}
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); // inisialisasi Firebase {Inisialisasi Firebase dengan opsi platform default}
  runApp(const LoginAppMain()); // menjalankan aplikasi {Menjalankan aplikasi dengan widget LoginAppMain}
}

class LoginAppMain extends StatelessWidget {
  const LoginAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menonaktifkan banner debug
      routes: {
        '/Login': (context) => const LoginAppMain(), // rute awal main.dart (LoginApp)
        '/SignApp': (context) => const SignApp(), // penambahan rute ke SignApp
        '/Home': (context) => const HomeAppMain(), // penambahan rute ke HomeApp
        // '/CheckoutApp': (context) => const CheckoutApp(),
      },
      home: const LoginApp(), // set LoginApp sebagai home
    );
  }
}

class LoginApp extends StatefulWidget { // widget LoginApp
  const LoginApp({super.key}); // konstruktor LoginApp

  @override
  _LoginState createState() => _LoginState(); // membuat state baru dari _LoginState
}

class _LoginState extends State<LoginApp> { // widget _LoginState
  final TextEditingController _emailController = TextEditingController(); // controller email
  final TextEditingController _passwordController = TextEditingController(); // controller password
  String _message = ''; // variabel _message (adalah variabel string yang digunakan untuk menyimpan dan menampilkan pesan kepada pengguna berdasarkan hasil dari proses login. setstate digunakan untuk memperbaharui nilai dari _message dan memicu pembaruan ui agar pesan terbaru ditampilkan kepada pengguna mirip seperti [mendapatkan pesan terbaru dari _message pesan yang kita buat dari fungsi setState.])

  @override
  void dispose() { // fungsi dispose
    _emailController.dispose(); // menangani pembuangan controller email
    _passwordController.dispose(); // menangani pembuangan controller password
    super.dispose(); // menangani pembuangan widget
  }

  Future<void> _saveDataToFirestore() async { // fungsi _saveDataToFirestore
    String email = _emailController.text.trim(); // mengambil email dari kontroler (Fungsi .trim() digunakan untuk menghapus spasi kosong di awal dan akhir string. Dalam konteks email dan password, ini penting karena Mencegah Kesalahan Input: Pengguna mungkin secara tidak sengaja menambahkan spasi di awal atau akhir saat mengetik email atau password. Spasi ini bisa menyebabkan kesalahan saat memverifikasi kredensial. Konsistensi Data: Menghapus spasi memastikan bahwa data yang disimpan atau dibandingkan adalah konsisten dan tidak terpengaruh oleh spasi yang tidak disengaja. Dengan menggunakan .trim(), Anda memastikan bahwa hanya karakter yang relevan yang diproses dan disimpan.)
    String password = _passwordController.text.trim(); // mengambil password dari kontroler

    if (email.isEmpty || password.isEmpty) { // menambahkan jika input email dan password kosong
      setState(() {
        _message = 'Periksa kembali email dan password anda!'; // menampilkan pesan kesalahan
      });
      return; // jika email dan password kosong, kembalikan fungsi
    }

    DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(email).get(); // mengambil data user dari firestore database

    if (userDoc.exists) { // jika userDoc ada
      if (userDoc['password'] == password) { // jika password sesuai
        setState(() {
          _message = 'Login berhasil';
        });
        Navigator.pushNamed(context, '/Home'); // jika login sukses, pindah ke HomeApp
      } else { // jika password atau email kurang benar atau kurang lengkap.
        setState(() {
          _message = 'Silahkan masukkan dengan benar'; // menampilkan pesan kesalahan
        });
      }
    } else { // jika email dan password tidak ditemukan
      setState(() {
        _message = 'Email tidak ditemukan. Silahkan daftar terlebih dahulu'; // menampilkan pesan kesalahan
      });
    }
  }

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
                height: 1350,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70), // layar melengkung mirip seperti hp pada umumnya
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 327,
                      top: 242,
                      child: Container(
                        width: 28,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15, // AWAL 15
                              top: 21, // AWAL 21
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
                      left: 77.5,
                      top: 900,
                      child: InkWell( // ketika di tekan akan di datanya tersimpan di firestore database (termasuk panjang dan lebar pada containernya)
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
                          color: const Color(0xFF17181C), // background depan dari logonya
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
                          color: Colors.black.withOpacity(0.6), // background belakang dari logonya [tambahan warna hitamnya]
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
                        onTap: () => Navigator.pushNamed(context, '/SignApp'), // rute ke SignApp
                        child: const SizedBox(
                          width: 350,
                          height: 50,
                          child: Text( // LETAK TEKS "Don't have an account? Sign Up"
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
                      // LETAK GAMBAR LOGONYA
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
                                      color: Color(0xFFE6E9EB), // background persegi panjang dari email
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Color(0xFFF1F5F8)),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 29,
                                  child: SizedBox( // sizeboxnya yang menyesuaikan total input dari yang kita masukkan.
                                    width: 500,
                                    height: 60,
                                    child: TextField( // LETAK TEXTFIELD EMAIL
                                      controller: _emailController, // controller email
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
                                      cursorColor: Colors.black, // warna cursor blinknya menjadi warna hitam
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
                                    decoration: const ShapeDecoration( // menggunakan ShapeDecoration pada Containernya
                                      color: Color(0xFFE6E9EB), // background persegi panjang dari password
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Color(0xFFF1F5F8)),
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
                                    child: TextField( // LETAK TEXTFIELD PASSWORD
                                      controller: _passwordController, // controller password
                                      obscureText: true, // TEKS YANG KITA MASUKKAN MENJADI TIDAK TERLIHAT (mirip seperti bintang kecil.)
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
                          const SizedBox(height: 20), // LETAK _MESSAGE (pada setstate)
                          Text(_message, // menampilkan _message dari fungsi setState yang kita buat.
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
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