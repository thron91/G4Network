// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, depend_on_referenced_packages, unused_import, prefer_typing_uninitialized_variables, unused_local_variable, library_prefixes, unnecessary_new, prefer_interpolation_to_compose_strings, use_build_context_synchronously, no_leading_underscores_for_local_identifiers, unnecessary_cast
import 'dart:ffi';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/dbHelper/mongodb.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'MongoDBModel.dart';
import 'dart:convert';

class MongoDbInsert extends StatefulWidget {
  const MongoDbInsert({super.key});

  @override
  State<MongoDbInsert> createState() => _MongoDbInsertState();
}

class _MongoDbInsertState extends State<MongoDbInsert> {
  var fnameController = new TextEditingController();
  var lnameController = new TextEditingController();
  var phoneController = new TextEditingController();
  var mailController = new TextEditingController();
  var studentController = new TextEditingController();
  var campusController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Insert Data",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: fnameController,
              decoration: InputDecoration(labelText: "firstName"),
            ),
            TextField(
              controller: lnameController,
              decoration: InputDecoration(labelText: "lastName"),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: "phoneNumber"),
            ),
            TextField(
              controller: mailController,
              decoration: InputDecoration(labelText: "emailAddress"),
            ),
            TextField(
              controller: studentController,
              decoration: InputDecoration(labelText: "studentNumber"),
            ),
            TextField(
              minLines: 1,
              maxLines: 3,
              controller: campusController,
              decoration: InputDecoration(labelText: "campus"),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    onPressed: () {
                      _fakeData();
                    },
                    child: Text("Generate Data")),
                ElevatedButton(
                    onPressed: () {
                      _insertData(
                          fnameController.text,
                          lnameController.text,
                          phoneController.text,
                          mailController.text,
                          studentController.text,
                          campusController.text);
                    },
                    child: Text("Insert Data"))
              ],
            ),
          ],
        ),
      )),
    );
  }

  Future<void> _insertData(String fName, String lName, String phonenumber,
      String mail, String student, String campus) async {
    var _id = M.ObjectId();
    final data = MongoDbModel(
      id: _id,
      firstName: fName,
      lastName: lName,
      phoneNumber: phonenumber,
      emailAddress: mail,
      studentNumber: student,
      campus: campus,
    );
    var result = await MongoDatabase.insert(data);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Inserted data" + _id.$oid)));
    _clearAll();
  }

  void _clearAll() {
    fnameController.text = "";
    lnameController.text = "";
    phoneController.text = "";
    mailController.text = "";
    studentController.text = "";
    campusController.text = "";
  }

  void _fakeData() {
    setState(() {
      fnameController.text = faker.person.firstName();
      lnameController.text = faker.person.lastName();
      phoneController.text = faker.phoneNumber.us();
      mailController.text = faker.internet.email();
      studentController.text = faker.randomGenerator.string(8);
      campusController.text = faker.address.city();
    });
  }
}
