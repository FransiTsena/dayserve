import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';

Future<Response> getSnapshot(String path, String field) async {
  List directories = Directory(path).listSync();
  List outPut = [];
  for (var file in directories) {
    if (file is Directory) {
      final data = await jsonDecode(
          File("${file.uri.path}/index.json").readAsStringSync());
      outPut.add(data.first[field]);
    }
  }
  String jsonString = jsonEncode(outPut);
  return Response.ok(jsonString, headers: {"Content-Type": "text/json"});
}
