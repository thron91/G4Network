// ignore_for_file: unused_import, file_names

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.emailAddress,
    required this.studentNumber,
    required this.campus,
  });

  ObjectId id;
  String firstName;
  String lastName;
  String phoneNumber;
  String emailAddress;
  String studentNumber;
  String campus;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        phoneNumber: json["phoneNumber"],
        emailAddress: json["emailAddress"],
        studentNumber: json["studentNumber"],
        campus: json["campus"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "emailAddress": emailAddress,
        "studentNumber": studentNumber,
        "campus": campus,
      };
}
