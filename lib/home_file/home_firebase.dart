import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ECommerceAppFromFirebase extends StatefulWidget {
  const ECommerceAppFromFirebase({super.key});

  @override
  State<ECommerceAppFromFirebase> createState() => _MyWidget();
}

class _MyWidget extends State<ECommerceAppFromFirebase> {
  // mengimpor firestore package
  final CollectionReference ecommerceApp = FirebaseFirestore.instance.collection("ECommerce App");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('ECommerce App From Firebase', style: TextStyle(color: Colors.black),)),
      ),
      body: StreamBuilder(
        stream: ecommerceApp, builder: builder),
    );
  }
}