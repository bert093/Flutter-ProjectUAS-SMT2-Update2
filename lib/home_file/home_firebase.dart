import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart'; // Tambahkan ini

class ECommerceAppFromFirebase extends StatefulWidget {
  const ECommerceAppFromFirebase({super.key});

  @override
  State<ECommerceAppFromFirebase> createState() => EcommerceAppFromFirebaseState();
}

class EcommerceAppFromFirebaseState extends State<ECommerceAppFromFirebase> {
  // mengimpor firestore package
  final DocumentReference ecommerceAppDoc = FirebaseFirestore.instance.collection("ECommerce App").doc("oYgSqFhXs0WGjh1pUVNF");

  Future<String> _getImageUrl(String imagePath) async {
    return await FirebaseStorage.instance.ref(imagePath).getDownloadURL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'ECommerce App From Firebase',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: ecommerceAppDoc.get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Icon(Icons.error));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("Document not found"));
          }

          final document = snapshot.data!;
          final imageUrl = document['imageurl'];

          return FutureBuilder<String>(
            future: _getImageUrl(imageUrl),
            builder: (context, imageSnapshot) {
              if (imageSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (imageSnapshot.hasError) {
                return const Center(child: Icon(Icons.error));
              }
              return Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(imageSnapshot.data!),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 0),
                    Text(
                      document['name'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}