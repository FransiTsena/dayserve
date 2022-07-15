import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'decrypt.dart';
import 'handler.dart';

const int port = 1111;
const String address = "localhost";
HttpServer? server;

Future<void> main() async {
  startServer();
}

startServer() async {
  Handler handler = Pipeline().addHandler(manageRequest);
  try {
    server = await shelf_io.serve(handler, address, port);
  } catch (e) {
    print("Port $port already in user");
  }
}

Future<Response> manageRequest(Request request) async {
  List uriList = request.requestedUri.normalizePath().pathSegments;
  if (request.requestedUri.normalizePath().path == "/favicon.ico") {
    return Response.ok("Everything served");
  } else if (uriList.isNotEmpty && uriList[0] == 'database0' ||
      uriList[1] == 'database0') {
    return checkPrivilage(uriList);
  } else {
    return Response.notFound("Error 400");
  }
}

Future<Response> checkPrivilage(List uriList) async {
  List newList = [];
  if (uriList.last.isEmpty || uriList.last == null) {
    newList = uriList.sublist(0, uriList.length - 1);
  } else {
    newList = uriList;
  }

  int start = 0;
  int end = newList.length;

  if (newList.first[0] == "%") {
    start = 1;
  }

  if (newList.last[0] == "!") {
    end = newList.length - 1;
  }

  List newUri = newList.sublist(start, end);

  String metaData = await File("${newUri.join('/')}/meta.json").readAsString();

  List meta = await jsonDecode(metaData);

  String uid =
      newList.first.toString().substring(1, newList.first.toString().length);

  print(uid);
  if (meta[0]["access"].contains("any") ||
      meta[0]["access"].contains(
            decrypt(uid, meta[0]['encryptionKey']),
          ) &&
          meta[0]["fraud"].contains(decrypt(uid, meta[0]['encryptionKey'])) ==
              false) {
    return serveData(200, newUri.join('/'), meta, newList);
  } else {
    print("Request Denied");
    return serveData(403, "", "", newUri);
  }
}

Future<Response> serveData(
    int code, String dataUri, metaData, List uriList) async {
  if (code == 200) {
    //if request is document
    if (await File("$dataUri/index.json").exists()) {
      String indexData = await File("$dataUri/index.json").readAsString();
      List indexOutput = await jsonDecode(indexData);
      //get specific field
      if (uriList.last.toString()[0] == "!" &&
          uriList.last.toString()[1] != "!") {
        String field = uriList.last.toString().split("!").last;
        return Response.ok(indexOutput[0][field].toString(),
            headers: {"Content-Type": 'text/json'});
      }
      //get every field within document
      else {
        return Response.ok(indexOutput[0].toString(),
            headers: {"Content-Type": 'text/json'});
      }
    }
    //request is snapshot
    else {
      if (uriList.last.toString()[0] == "!") {
        String field = uriList.last.toString().split("!").last;
        return getSnapshot(dataUri, field);
      } else {
        return Response.ok("failed at 994");
      }
    }

    //get snapshot of data

  } else {
    return Response.notFound("Error");
  }
}
