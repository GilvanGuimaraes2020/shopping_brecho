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
    try {
      final data =
          await db.collection('tasks').get().then((value) => value.docs);
      for (final element in data) {
        kanban.add(KanbanItemModel(
            id: element.id, kanban: KanbanModel.fromJson(element.data())));
      }
      return KanbanItem.data(kanban);
    } catch (e) {
      return KanbanItem.error();
    }
  }

  @override
  Future<RequestStatus> upStatus(String id, Map<String, String> status) async {
    try {
      await db.collection('tasks').doc(id).set(status, SetOptions(merge: true));
      return RequestStatus.success();
    } catch (e) {
      return RequestStatus.error(e);
    }
  }

  @override
  Future<RequestStatus> saveData(
      {String? id, Map<String, dynamic>? payload}) async {
    try {
      await db
          .collection('tasks')
          .doc(id)
          .set(payload ?? {}, SetOptions(merge: true));
      return RequestStatus.success();
    } catch (e) {
      return RequestStatus.error(e);
    }
  }

  @override
  Future<KanbanItem> filterKanban({Map<String, dynamic>? payload}) async {
    final List<KanbanItemModel> kanban = [];
    try {
      final data = await db
          .collection('tasks')
          .where('level', whereIn: payload?['level'] as List<String?>)
          .where('responsible', isGreaterThanOrEqualTo: payload?['responsible'])
          .where('responsible',
              isLessThan: payload!['responsible'].toString().isNotEmpty
                  ? "${payload['responsible']}z"
                  : '')
          .get()
          .then((value) => value.docs);
      for (final element in data) {
        kanban.add(KanbanItemModel(
            id: element.id, kanban: KanbanModel.fromJson(element.data())));
      }
      return KanbanItem.data(kanban);
    } catch (e) {
      return KanbanItem.error();
    }
  }
}
