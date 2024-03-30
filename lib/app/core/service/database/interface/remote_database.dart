import 'package:postgres/postgres.dart';

abstract class RemoteDatabase{
  Future<List<Map<String, dynamic>>> mappedresults(String query,
      {Map<String, String> variable = const {}});

  Future<PostgreSQLResult> query(String query,
      {Map<String, String> variable = const {}});
}
