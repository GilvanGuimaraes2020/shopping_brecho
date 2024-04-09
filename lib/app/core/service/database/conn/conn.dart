import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/core/service/database_connection.dart/database_connection.dart';

class Conn implements RemoteDatabase, Disposable {
  Conn();

  static PostgreSQLConnection connection =
      DatabaseConnection().getSqlConnection();

  Future<void> _openConnection() async {
    bool stopConnection = false;
    Future.delayed(const Duration(seconds: 5), () {
      stopConnection = true;
      connection = DatabaseConnection().getSqlConnection();
    });
    while (connection.isClosed && !stopConnection) {
      await connection.open();
    }
  }

  @override
  Future<List<Map<String, dynamic>>> mappedresults(String query,
      {Map<String, String> variable = const {}}) async {
    await _openConnection();
    return connection.mappedResultsQuery(query, substitutionValues: variable);
  }

  @override
  Future<PostgreSQLResult> query(String query,
      {Map<String, String> variable = const {}}) async {
    await _openConnection();
    return connection.query(query, substitutionValues: variable);
  }

  @override
  Future<void> dispose() async {
    throw 'dispose connection';
  }
}
