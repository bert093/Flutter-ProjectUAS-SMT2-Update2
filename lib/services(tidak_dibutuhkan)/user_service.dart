import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> saveUserData(String firstName, String lastName, String email, String password) async {
    return users
        .add({
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'password': password, // Catatan: menyimpan password secara plain text tidak disarankan
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}