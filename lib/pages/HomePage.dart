import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../read data/get_user_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User = FirebaseAuth.instance.currentUser!;

  //document IDs
  List<String> docID = [];

//get docID
  Future getDocIDs() async {
    await FirebaseFirestore.instance
        .collection("Users")
        .orderBy('age', descending: true)
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach((Document) {
            print(Document.reference);
            docID.add(Document.reference.id);
          }),
        );
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   getDocIDs();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          User.email!,
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(child: Builder(builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Expanded(
              child: FutureBuilder(
                  future: getDocIDs(),
                  builder: (context, Snapshot) {
                    return ListView.builder(
                      itemCount: docID.length,
                      itemBuilder: (context, Index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: GetUserName(documentID: docID[Index]),
                            tileColor: Colors.grey[200],
                          ),
                        );
                      },
                    );
                  }),
            ),
          ],
        );
      })),
    );
  }
}
