import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'models/user.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => CreateScreenState();
}

class CreateScreenState extends State<CreateScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _type = TextEditingController();

  void clearTextInput() {
    _name.clear();
    _age.clear();
    _type.clear();
  }

  Stream<List<User>>? readUser() {
    FirebaseFirestore.instance.collection('User');
  }

  Future createUser(
      {required String name, required String age, required String type}) async {
    final docUser = FirebaseFirestore.instance.collection('User').doc();

    final user = User(
      id: docUser.id,
      name: name,
      age: age,
      type: type,
    );
    final json = user.toJson();
    await docUser.set(json);
  }

  @override
  void dispose() {
    _name.dispose();
    _age.dispose();
    _type.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    hintText: 'name',
                    hintStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      height: 1.25,
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xffBEBEBE,
                      ),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 12),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xff5EDE99), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen.shade50, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text('Age'),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _age,
                  decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      height: 1.25,
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xffBEBEBE,
                      ),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 12),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xff5EDE99), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen.shade50, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Class',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _type,
                  decoration: InputDecoration(
                    hintText: 'Class',
                    hintStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      height: 1.25,
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xffBEBEBE,
                      ),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 12),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xff5EDE99), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreen.shade50, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          final name = _name.text;
                          final age = _age.text;
                          final type = _type.text;

                          createUser(name: name, age: age, type: type);

                          clearTextInput();
                        },
                        child: Text('Create')))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
