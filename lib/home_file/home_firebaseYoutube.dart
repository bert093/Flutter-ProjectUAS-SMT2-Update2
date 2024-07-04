import 'package:cloud_firestore/cloud_firestore.dart'; // mengimpor package cloud_firestore untuk menggunakan Firestore
import 'package:flutter/material.dart'; // mengimpor package flutter untuk menggunakan widget

class ECommerceAppFromFirebase extends StatefulWidget {
  const ECommerceAppFromFirebase({super.key}); // konstruktor untuk widget Stateful

  @override
  State<ECommerceAppFromFirebase> createState() => EcommerceAppFromFirebaseState(); // membuat state untuk widget Stateful
}

class EcommerceAppFromFirebaseState extends State<ECommerceAppFromFirebase> {
  // mengimpor firestore package
  final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("ECommerce App"); // referensi ke koleksi "ECommerce App" di Firestore

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // warna latar belakang AppBar
        title: const Center(
            child: Text(
          'ECommerce App From Firebase', // judul AppBar
          style: TextStyle(color: Colors.white), // warna teks judul
        )),
      ),
      body: StreamBuilder(
        stream: ecommerceApp.snapshots(), // stream data dari Firestore
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) { // jika ada data
            return GridView.builder(
              itemCount: streamSnapshot.data!.docs.length, // jumlah item dalam GridView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // jumlah kolom dalam grid
                crossAxisSpacing: 12, // jarak antar kolom
                mainAxisSpacing: 12, // jarak antar baris
                childAspectRatio: 0.8, // rasio aspek anak dalam grid
              ),
              itemBuilder: (context, index) {
                final DocumentSnapshot document = streamSnapshot.data!.docs[index]; // mengambil dokumen dari snapshot
                return GestureDetector(
                  onTap: () {}, // aksi saat item di-tap
                  child: Material(
                    elevation: 3, // elevasi material
                    borderRadius: BorderRadius.circular(10), // radius border material
                    color: Colors.white12, // warna latar belakang material
                    child: Padding(
                      padding: const EdgeInsets.all(8.0), // padding dalam material
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // menyelaraskan anak-anak kolom ke kiri
                        children: [
                          Container(
                            height: 300, // tinggi container
                            width: double.infinity, // lebar container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5), // radius border container
                              image: DecorationImage(
                                image: NetworkImage(
                                  document['imageurl'], // URL gambar dari dokumen
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10), // jarak vertikal
                          Text(
                            document['name'], // nama dari dokumen
                            style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold), // gaya teks
                          ),
                          const SizedBox(height: 10), // jarak vertikal
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8, // padding horizontal
                                  vertical: 2, // padding vertikal
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10), // radius border container
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(), // indikator loading saat data belum tersedia
          );
        },
      ),
    );
  }
}