// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:prj_uas_d1_24/main.dart';
// // import 'package:prj_uas_d1_24/main.dart';

// void main() async {
//   WidgetsFlutterBinding
//       .ensureInitialized(); // memastikan binding Flutter telah diinisialisasi
//   await Firebase.initializeApp(); // inisialisasi Firebase
//   runApp(const HomeAppMain()); // menjalankan aplikasi dengan widget HomeAppMain
// }

// class HomeAppMain extends StatefulWidget {
//   const HomeAppMain({super.key});

//   @override
//   State<HomeAppMain> createState() => _HomeAppMainState();
// }

// class _HomeAppMainState extends State<HomeAppMain> {
//   // import cloud firestore package
//   final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("Ecommerce App");
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/Login': (context) => const LoginApp(), // tambahin LoginApp dari file main.dart
//         '/Home': (context) => const HomeAppMain(), // menggunakan navigasi ke class rootnya
//       },
//       home: const HomeApp(),
//     );
//   }
// }

// class HomeApp extends StatelessWidget {
//   const HomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Ecommerce App'),
//         centerTitle: true,
//         backgroundColor: Colors.blue, // Ubah warna latar belakang AppBar
//       ),
//       backgroundColor: Colors.white, // Ubah warna latar belakang Scaffold
//       body: StreamBuilder(
//         // LETAK GAMBAR DARI FIREBASE
//         stream: FirebaseFirestore.instance.collection('Ecommerce App').snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data!.docs.length,
//               itemBuilder: (context, index) {
//                 DocumentSnapshot document = snapshot.data!.docs[index];
//                 // Log URL gambar untuk debugging
//                 // print(document['imageurl']);
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Container(
//                         height: 300,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: NetworkImage(document['imageurl']),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Container(
//                         width: 300,
//                         height: 300,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             image: NetworkImage(document['imageurl']),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         document['name'],
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       // Row(
//                       //   children: [
//                       //     Container(
//                       //       padding: const EdgeInsets.symmetric(
//                       //         horizontal: 8,
//                       //         vertical: 2,
//                       //       ),
//                       //       decoration: BoxDecoration(
//                       //         borderRadius: BorderRadius.circular(10),
//                       //       ),
//                       //     ),
//                       //   ],
//                       // ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
