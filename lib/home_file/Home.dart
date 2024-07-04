import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prj_uas_d1_24/main.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // memastikan binding Flutter telah diinisialisasi
  await Firebase.initializeApp(); // inisialisasi Firebase
  runApp(const HomeAppMain()); // menjalankan aplikasi dengan widget HomeAppMain
}

class HomeAppMain extends StatefulWidget {
  const HomeAppMain({super.key});

  @override
  State<HomeAppMain> createState() => _HomeAppMainState();
}

class _HomeAppMainState extends State<HomeAppMain> {
  // import cloud firestore package
  final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("Ecommerce App");
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
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column( // mainAxisAlignment: MainAxisAlignment.center,
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
                    StreamBuilder( // LETAK GAMBAR DARI FIREBASE
                      stream: FirebaseFirestore.instance.collection('Ecommerce App').snapshots(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot document = snapshot.data!.docs[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(document['imageurl']),
                            );
                          },
                        );
                      },
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
