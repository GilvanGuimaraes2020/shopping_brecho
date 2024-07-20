import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:postgres/postgres.dart';

class DatabaseConnection {
  static final DatabaseConnection _connection = DatabaseConnection._internal();

  factory DatabaseConnection() {
    return _connection;
  }

  DatabaseConnection._internal() {
    _init();
  }

  late PostgreSQLConnection _sqlConnection;

  Future<void> _init() async {
    final dataBaseUrl = dotenv.env['DATABASE_URL']!;

    final uri = Uri.parse(dataBaseUrl);
    final postgresConn = PostgreSQLConnection(
        uri.host, uri.port, uri.pathSegments.last,
        username: uri.userInfo.split(':').first,
        password: uri.userInfo.split(':').last);

    if (postgresConn.isClosed) {
      await postgresConn.open();
    }
    _sqlConnection = postgresConn;
  }

  PostgreSQLConnection getSqlConnection() {
    if(_sqlConnection.isClosed){
      _init();
    } 
    return _sqlConnection;
  }
}
