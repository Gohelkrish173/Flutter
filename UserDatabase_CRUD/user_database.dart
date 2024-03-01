import 'dart:io';

import 'package:demo/model/city_model.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class User_Database {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'demoDB1.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "demoDB1.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load(join('assets/Databases', 'demoDB1.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String,Object?>>> getUserListFromUserTbl() async {
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
    await db.rawQuery('Select Tbl_User.Name,Tbl_User.Mobile,Tbl_User.Email,Tbl_City.City_Name from Tbl_User Inner Join Tbl_City on Tbl_City.CityId = Tbl_User.CityId');
    return data;
  }

  Future<List<CityModel>> getCityList() async {
    Database db =await initDatabase();
    List<Map<String,Object?>> data =await db.rawQuery('Select * from Tbl_City');
    List<CityModel> cityList = [];
    for(int i=0; i<data.length;i++){
      CityModel model =  CityModel();
      model.CityId = int.parse(data[i]['CityId'].toString());
      model.City_Name = data[i]['City_Name'].toString();
      cityList.add(model);
    }
    return cityList;
  }

  // //get CityName by CityId
  // Future<String> getCityName(id) async {
  //   Database db = await initDatabase();
  //   List<Map<String,dynamic>> data =await db.query('Tbl_City',columns: ['City_Name'],where: 'CityId = ?',whereArgs: [id] );
  //   String d1 = data[0]['City_Name'].toString();
  //   return d1;
  // }

  Future<int> insertUserDetail(map) async {
    Database db = await initDatabase();
    int userId = await db.insert('Tbl_User', map);
    return userId;
  }

  Future<int> UpdateUserDetail(map,mobile) async {
    Database db = await initDatabase();
    int userId = await db.update('Tbl_User', map,where: 'Mobile = ?',whereArgs: [mobile]);
    return userId;
  }

  Future<int> DeteleUserDetail(mobile) async {
    Database db = await initDatabase();
    int userId = await db.delete('Tbl_User',where: 'Mobile = ?',whereArgs: [mobile]);
    return userId;
  }
}