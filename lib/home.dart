import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crudapp/Create.dart';
import 'package:crudapp/update.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('Users')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(CreateScreen());
      }),
      body: StreamBuilder<List<User>>(
          stream: readUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('here');
              print(snapshot.error);
              return Center(child: Text("ERROR"));
            } else if (snapshot.hasData) {
              final users = snapshot.data!;

              return ListView(
                children: users.map(buildUser).toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Widget buildUser(User user) => ListTile(
        onTap: (() {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UpdateDeleteScreen(
                    age: '',
                    name: '',
                    type: '',
                  )));
        }),
        leading: CircleAvatar(
          child: Text('${user.age}'),
        ),
        title: Text(user.name!),
        subtitle: Text(user.type!),
      );
}
