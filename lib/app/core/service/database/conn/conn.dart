import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/core/service/database_connection.dart/database_connection.dart';

class Conn implements RemoteDatabase, Disposable {
  Conn() ;

  static PostgreSQLConnection connection = DatabaseConnection().getSqlConnection();

  @override
  Future<List<Map<String, dynamic>>> query(String query,
      {Map<String, String> variable = const {}}) async {
    return connection.mappedResultsQuery(query, substitutionValues: variable);
  }

  @override
  Future<void> dispose() async {
    connection.close();
  }
}
