import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_brecho/app/core/models/kanban_model/kanban_model.dart';

part 'kanban_item_model.freezed.dart';
part 'kanban_item_model.g.dart';

@freezed 
class KanbanItemModel with _$KanbanItemModel{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory KanbanItemModel({
    String? id,
    KanbanModel? kanban
  }) = _KanbanItemModel;

  factory KanbanItemModel.fromJson(Map<String, dynamic> json) => _$KanbanItemModelFromJson(json);
}

@freezed 
class KanbanItem with _$KanbanItem{
factory KanbanItem.data(List<KanbanItemModel> itemModel) = KanbanItemData;
factory KanbanItem.none() = KanbanItemNone;
factory KanbanItem.loading() = KanbanItemLoading;
factory KanbanItem.error() = KanbanItemError;
}
