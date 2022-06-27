// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:crudapp/Create.dart';

class UpdateDeleteScreen extends StatefulWidget {
  final String name, age, type;
  UpdateDeleteScreen({
    Key? key,
    required this.name,
    required this.age,
    required this.type,
  }) : super(key: key);

  @override
  State<UpdateDeleteScreen> createState() => _UpdateDeleteScreenState();
}

class _UpdateDeleteScreenState extends State<UpdateDeleteScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _type = TextEditingController();

  String? name, age, type;

  void getvalue() {}

  @override
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
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('Create')))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
