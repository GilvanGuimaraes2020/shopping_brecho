import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:postgres/postgres.dart';
import 'package:shopping_brecho/app/core/service/database/interface/remote_database.dart';
import 'package:shopping_brecho/app/core/service/database_connection.dart/database_connection.dart';

class Conn implements RemoteDatabase {
  Conn();

  static PostgreSQLConnection connection =
      DatabaseConnection().getSqlConnection();

  Future<void> _openConnection() async {

    if (connection.isClosed) {
      try {
        await connection.open();
      } catch (e, s) {
        FirebaseCrashlytics.instance.recordError(e, s);
      }
    }

    if (connection.isClosed) {
      connection = DatabaseConnection().getSqlConnection();
      try {
        await connection.open();
      } catch (e, s) {
        FirebaseCrashlytics.instance.recordError(e, s);
      }
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
}
