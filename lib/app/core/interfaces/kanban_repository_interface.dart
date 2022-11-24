

import 'package:shopping_brecho/app/core/models/kanban_model/kanban_item_model.dart';

abstract class IKanbanRepository {
  
Future<KanbanItem> tasks();
}
