abstract class RemoteDatabase{
  Future<List<Map<String, dynamic>>> query(String query, {Map<String, String> variable = const {}}) ;
}
