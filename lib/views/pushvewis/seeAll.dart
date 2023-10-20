import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return seeAll(snapshot.data! as QuerySnapshot<Map<String, dynamic>>);
          }
        },
      ),
    );
  }
}

Widget seeAll(QuerySnapshot<Map<String, dynamic>> snapshot) {
  final products = snapshot.docs;

  return ListView.builder(
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index].data() as Map<String, dynamic>;
      final name = product['name'] as String?;
      final description = product['description'] as String?;
      final price = product['price']?.toDouble() as double?;
      final imageUrl = product['image'] as String?;

      return ListTile(
        title: Text(name ?? ''),
        subtitle: Text(description ?? ''),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(price?.toString() ?? ''),
            SizedBox(width: 16),
            
          ],
        ),
        leading: imageUrl != null
            ? Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  imageUrl,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                ),
              )
            : Container(
                width: 48,
                height: 48,
              ),
      );
    },
  );
}

