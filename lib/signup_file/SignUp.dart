import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prj_uas_d1_24/main.dart';

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/SignApp': (context) => const SignApp(),
        '/Login': (context) => const LoginAppMain(), // rute navigasi ke login
      },
      home: const SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String _message = '';

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _saveDataToFirestore() async {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (firstName.isEmpty || lastName.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) { // menambahkan kondisi jika firstname, lastname, email, password, confirmpassword apabila kosong, akan muncul pesan "Lengkapi data anda"
      setState(() {
        _message = 'Mohon lengkapi data anda';
      });
      return;
    }

    if (!email.endsWith("@gmail.com")) { // jika email tidak ada dibagian akhir @gmail.com muncul pesan ini.
      setState(() {
        _message = 'Email harus mengandung @gmail.com';
      });
      return;
    }

    if (password != confirmPassword) { // memastikan agar password dan konfirmasi password sama
      setState(() {
        _message = 'Password and Confirm Password do not match';
      });
      return;
    }

    // Save data to Firestore
    await FirebaseFirestore.instance.collection('users').doc(email).set({
      'firstName': firstName, 
      'lastName': lastName,
      'email': email,
      'password': password,
    });

    setState(() {
      _message = 'Sign Up successful. Data saved to Firestore';
    });

    // Navigate to Login screen after successful sign up , RUTE NAVIGASI Jika berhasil
    Navigator.pushNamed(context, '/Login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        decoration: ShapeDecoration(
                          // DEKORASI PERSEGI PANJANG DARI WARNA 0XFF17181C (warna untuk drop shadow perseginya)
                          color: Colors.black.withOpacity(0.6000000238418579),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 229,
                      top: 7,
                      child: Container(
                        width: 263,
                        height: 263,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Images/satu.png'), // gambar logonya
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(// Bagian "Already have an account? Sign In"
                      left: 200,
                      top: 1264,
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, '/Login'), // rute navigasi untuk ke login
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
                                      controller: _firstNameController,
                                      decoration: const InputDecoration(
                                        hintText: 'First name',
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
                                      controller: _lastNameController,
                                      decoration: const InputDecoration(
                                        hintText: 'Last name',
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
                                      controller: _emailController,
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
                                      controller: _passwordController,
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
                                      controller: _confirmPasswordController,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        hintText: 'Confirm Password',
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
                            _message,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () { // tidak perlu tambahkan rute navigasi (route)
                              _saveDataToFirestore();
                            },
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
                                  'Sign Up',
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