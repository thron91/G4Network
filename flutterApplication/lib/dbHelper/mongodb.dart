// ignore_for_file: unused_import
import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import '../MongoDBModel.dart';
import 'constant.dart';

class MongoDatabase {
  static var db, userCollections;
  static connect() async {
    db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    userCollections = db.collection(USER_COLLECTION);
  }

  static Future<String> insert(MongoDbModel data) async {
    try {
      var result = await userCollections.insertOne(data.toJson());
      if (result.isSuccess) {
        return "Data inserted";
      } else {
        return "Something Wrng while inserting data.";
      }
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}
