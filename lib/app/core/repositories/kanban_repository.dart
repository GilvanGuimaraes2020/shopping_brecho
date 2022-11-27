import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';
import 'package:shopping_brecho/app/core/models/request_status/request_status_model.dart';

class KanbanRepository implements IKanbanRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<KanbanItem> tasks() async {
    final kanban = <KanbanItemModel>[];
    final data = await db.collection('tasks').get().then((value) => value.docs);
    for (final element in data) {
      kanban.add(KanbanItemModel(
          id: element.id, kanban: KanbanModel.fromJson(element.data())));
    }
    return KanbanItem.data(kanban);
  }

  @override
  Future<RequestStatus> upStatus(String id, Map<String, String> status) async {
    try {
      await db.doc(id).set(status, SetOptions(merge: true));
      return RequestStatus.success();
    } catch (e) {
      return RequestStatus.error(e);
    }
  }
}
