

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_brecho/app/core/interfaces/kanban_repository_interface.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';

class KanbanRepository implements IKanbanRepository {
  final db = FirebaseFirestore.instance;
   @override
  Future<KanbanItem> tasks() async {
    final kanban = <KanbanItemModel>[];
    final data = await db
        .collection('tasks')
        .get()
        .then((value) => value.docs);
    for (final element in data) {
      kanban
      .add(KanbanItemModel(
        id: element.id,
        kanban: KanbanModel.fromJson(element.data())));
        
        
    }
    return KanbanItem.data(kanban);
  }
}
