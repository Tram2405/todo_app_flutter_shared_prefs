import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app_flutter/models/todo_model.dart';
class SharedPrefs {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final String keyTask = 'keyTask';

  Future<List<TodoModel>?> getTasks() async {
    SharedPreferences prefs = await _prefs;
    String? data = prefs.getString(keyTask);
    if (data == null) return null;

     print('object $data'); 
    List<Map<String, dynamic>> maps = jsonDecode(data) 
        .cast<Map<String, dynamic>>() as List<Map<String, dynamic>>; 
    print('object $maps');

    return maps.map((e) => TodoModel.fromJson(e)).toList(); 
  }

  Future<void> addTasks(List<TodoModel> tasks) async {
    final maps = tasks.map((e) => e.toJson()).toList();
  
    SharedPreferences prefs = await _prefs;
    prefs.setString(keyTask, jsonEncode(maps)); 
  }
}

