import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';

abstract class IKanbanRepository {
  Future<KanbanItem> tasks();
  Future<RequestStatus> upStatus(String id, Map<String, String> status);
  Future<RequestStatus> saveData({String? id, Map<String, dynamic>? payload});
  Future<KanbanItem> filterKanban({Map<String, dynamic>? payload});
}
