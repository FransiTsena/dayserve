import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'encrypt.dart';

void main() async {
  await serve();
}

const int port = 8080;
const String address = "localhost";

Future<void> serve() async {
  Handler handler = Pipeline().addHandler(manageRequests);
  try {
    HttpServer server = await shelf_io.serve(handler, address, port);
    print('[Info] Serving at http://${server.address.host}:${server.port} !');
  } catch (error) {
    print('[Warning] Port $port is already in use.');
    exit(0);
  }
}

Future<Response> manageRequests(Request request) async {
  // print('[Debug] ${request.method} ${request.requestedUri.normalizePath().path}');

  switch (request.requestedUri.normalizePath().path) {
    case '/':
      return Response.ok(File('assets/index.html').readAsStringSync(),
          headers: {
            'Content-Type': 'text/html',
          });
    case '/users':
      return Response.ok(File('assets/users.json').readAsStringSync(),
          headers: {
            'Content-Type': 'text/json',
          });

    case '/login':
      return Response.ok(File('assets/login.html').readAsStringSync(),
          headers: {
            'Content-Type': 'text/html',
          });

    default:
      return Response.notFound('Not found');
  }
}
