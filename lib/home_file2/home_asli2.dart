// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:prj_uas_d1_24/main.dart';
// // import 'package:firebase_core/firebase_core.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized(); // memastikan binding Flutter telah diinisialisasi
// //   await Firebase.initializeApp(); // inisialisasi Firebase
// //   runApp(const HomeAppMain()); // menjalankan aplikasi dengan widget HomeAppMain
// // }

// class HomeAppMain extends StatefulWidget {
//   const HomeAppMain({super.key});

//   @override
//   State<HomeAppMain> createState() => HomeAppMainState();
// }

// class HomeAppMainState extends State<HomeAppMain> {
//   // import cloud firestore package
//   final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("ECommerce App");

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/Login': (context) => const LoginApp(), // tambahin LoginApp dari file main.dart
//         '/Home': (context) => const HomeAppMain(), // menggunakan navigasi ke class rootnya
//       },
//       home: Scaffold(
//         appBar: AppBar(
//           title:  const Center(
//             child: Text(
//               'ECommerce App',
//               style: TextStyle(color: Colors.white,
//               ),
//               ),
//             ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         // backgroundColor: Colors.black,
//         body: StreamBuilder(
//           stream: ecommerceApp.snapshots(),
//           builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) { // disini streamSnapshot yang diubah
//             if (streamSnapshot.hasData) {
//               return GridView.builder(
//                 itemCount: streamSnapshot.data!.docs.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, // Number of columns in the grid
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 1,
//                 ),
//                 itemBuilder: (context, index) {
//                   final DocumentSnapshot document = streamSnapshot.data!.docs[index];
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     // child: GestureDetector(
//                     //   onTap: () {},
//                       child: Material(
//                         // menentukan warna latar belakang dari widget material
//                         color: Colors.blueGrey, // mengubah warna background (harus di bagian material)
//                          elevation: 3,
//                         borderRadius: BorderRadius.circular(10),
//                         child: Column(
//                           children: [
//                             Container(
//                               height: 300,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 image: DecorationImage(
//                                   image: NetworkImage(document['imageurl']),
//                                   // fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10), // jarak vertikal
//                             Center(
//                               child: Text(
//                                 document['name'], // nama dari dokumen
//                                 style: const TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                                   ), // gaya teks
//                               ),
//                             ),
//                           // const SizedBox(height: 10), // jarak vertikal
//                           // Center(
//                           //   child: Text(
//                           //     document['description'], // nama dari dokumen
//                           //     style: const TextStyle(
//                           //         fontSize: 20,
//                           //         fontWeight: FontWeight.bold,
//                           //         color: Colors.deepOrange), // gaya teks
//                           //   ),
//                           // ),
//                             // const SizedBox(height: 10), // jarak vertikal
//                             // Row(
//                             //   children: [
//                             //     Container(
//                             //       padding: const EdgeInsets.symmetric(
//                             //         horizontal: 8, // padding horizontal
//                             //         vertical: 2, // padding vertikal
//                             //       ),
//                             //       decoration: BoxDecoration(
//                             //         borderRadius: BorderRadius.circular(10), // radius border container
//                             //       ),
//                             //     ),
//                             //   ],
//                             // ),
//                           ], // Setiap widget di dalam list ini diatur secara vertikal oleh Column. (opsional)
//                         ),
//                       ),
//                     // ),
//                   );
//                 },
//               );
//             }
//             return const Center(child: CircularProgressIndicator());
//           },
//         ),
//       ),
//     );
//   }
// }