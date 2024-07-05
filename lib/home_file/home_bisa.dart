import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prj_uas_d1_24/main.dart';
// import 'package:firebase_core/firebase_core.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // memastikan binding Flutter telah diinisialisasi
//   await Firebase.initializeApp(); // inisialisasi Firebase
//   runApp(const HomeAppMain()); // menjalankan aplikasi dengan widget HomeAppMain
// }

class HomeAppMain extends StatefulWidget {
  const HomeAppMain({super.key});

  @override
  State<HomeAppMain> createState() => HomeAppMainState();
}

class HomeAppMainState extends State<HomeAppMain> {
  // import cloud firestore package
  final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("ECommerce App");

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Login': (context) => const LoginApp(), // tambahin LoginApp dari file main.dart
        '/Home': (context) => const HomeAppMain(), // menggunakan navigasi ke class rootnya
      },
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton( // menambahkan icon back
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30.0, // mengatur ukuran icon
            padding: const EdgeInsets.all(10.0), // mengatur padding
            color: Colors.black.withOpacity(0.8), // mengatur warna dan opacity
          ),
          title:  const Center(
            child: Text(
              'Test menggunakan field firestore',
              style: TextStyle(color: Colors.white,
              ),
              ),
            ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        // backgroundColor: Colors.black,
        body: StreamBuilder(
          stream: ecommerceApp.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) { // disini streamSnapshot yang diubah
            if (streamSnapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [ 
                    // membuat sizedbox baru
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        // color: Colors.pink,
                        color: const Color(0xFFE7EAEC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row( // menggunakan row untuk mengatur icon dan teks secara horizontal
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Mau cari apa?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox( // mengubah menjadi sizedbox
                      height: 370,
                      width: 575,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: streamSnapshot.data!.docs.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        final DocumentSnapshot document = streamSnapshot.data!.docs[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          // child: GestureDetector(
                          //   onTap: () {},
                            child: Material(
                              // menentukan warna latar belakang dari widget material
                              // color: Colors.blueGrey, // mengubah warna background (harus di bagian material)
                               elevation: 4, // menambahkan efek bayangan di bagian sizedbox
                              borderRadius: BorderRadius.circular(10),child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    width: double.infinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(document['imageurl']),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30), // jarak vertikal
                                  Center(
                                    child: Text(
                                      document['name'], // nama dari dokumen
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                        ), // gaya teks
                                    ),
                                  ),
                                // const SizedBox(height: 10), // jarak vertikal
                                // Center(
                                //   child: Text(
                                //     document['description'], // nama dari dokumen
                                //     style: const TextStyle(
                                //         fontSize: 20,
                                //         fontWeight: FontWeight.bold,
                                //         color: Colors.deepOrange), // gaya teks
                                //   ),
                                // ),
                                  // const SizedBox(height: 10), // jarak vertikal
                                  // Row(
                                  //   children: [
                                  //     Container(
                                  //       padding: const EdgeInsets.symmetric(
                                  //         horizontal: 8, // padding horizontal
                                  //         vertical: 2, // padding vertikal
                                  //       ),
                                  //       decoration: BoxDecoration(
                                  //         borderRadius: BorderRadius.circular(10), // radius border container
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                ], // Setiap widget di dalam list ini diatur secara vertikal oleh Column. (opsional)
                              ),
                            ),
                          // ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}