import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentID;

  GetUserName({required this.documentID});

  @override
  Widget build(BuildContext context) {
    CollectionReference Users = FirebaseFirestore.instance.collection('Users');
    return FutureBuilder<DocumentSnapshot>(
        future: Users.doc(documentID).get(),
        builder: (context, Snapshot) {
          if (Snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                Snapshot.data!.data() as Map<String, dynamic>;
            return Text("${data['first name']} " +
                '  ' +
                "${data['last name']} " +
                '  ' +
                "${data['age']} " +
                "years old");
          }
          return Text("loading.........");
        });
  }
}
