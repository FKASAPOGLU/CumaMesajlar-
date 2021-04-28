import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CumaFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Query query = FirebaseFirestore.instance.collection("image");
    return StreamBuilder<QuerySnapshot>(
      stream: query.snapshots(),
      // ignore: missing_return
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Icon(Icons.error, size: 50);
        }
        if (snapshot.connectionState == ConnectionState.done) {
          final QuerySnapshot querySnapshot = snapshot.data;
          return new ListView.builder(
            itemCount: querySnapshot.size,
            itemBuilder: (context, index) =>
                CumaWidget(querySnapshot.docs[index]),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
      },
    );
  }
}

class CumaWidget extends StatelessWidget {
  final DocumentSnapshot documentSnapshot;
  const CumaWidget(this.documentSnapshot);
  @override
  Widget build(BuildContext context) {
    print(documentSnapshot.data());
    return Card(
      child: documentSnapshot.data()['image']
          ? SizedBox.shrink()
          : Image.network(documentSnapshot.data()['image']),
    );
  }
}
