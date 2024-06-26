// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ECommerceAppFromFirebase extends StatefulWidget {
//   const ECommerceAppFromFirebase({super.key});

//   @override
//   State<ECommerceAppFromFirebase> createState() => EcommerceAppFromFirebaseState();
// }

// class EcommerceAppFromFirebaseState extends State<ECommerceAppFromFirebase> {
//   // mengimpor firestore package
//   final CollectionReference ecommerceApp =
//       FirebaseFirestore.instance.collection("ECommerce App");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Center(
//           child: Text('ECommerce App From Firebase',
//           style: TextStyle(color: Colors.white),
//         )),
//       ),
//       body: StreamBuilder(
//         stream: ecommerceApp.snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
//           if (streamSnapshot.hasData) {
//             // 1. Pindahkan final DocumentSnapshot document = streamSnapshot.data!.docs[index]; ke dalam itemBuilder.
//             // 2. Ganti documentSnapshot dengan document.
//             final DocumentSnapshot document = streamSnapshot.data!.docs[index]; // Error tersebut menunjukkan bahwa variabel index dan documentSnapshot tidak didefinisikan dalam kelas EcommerceAppFromFirebaseState. Untuk memperbaikinya, Anda perlu memastikan bahwa index didefinisikan dalam konteks yang benar dan documentSnapshot diambil dari streamSnapshot dengan benar.
//             return GridView.builder(
//               itemCount: streamSnapshot.data!.docs.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 12,
//                 mainAxisSpacing: 12,
//                 childAspectRatio: 0.8,
//               ),
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {},
//                   child: Material(
//                     elevation: 3,
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white12,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             height: 160,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                               image: DecorationImage(
//                                 image: NetworkImage(
//                                   documentSnapshot['imageurl'],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             document['name'],
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 2,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//           ;
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
