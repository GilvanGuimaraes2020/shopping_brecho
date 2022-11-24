import 'package:freezed_annotation/freezed_annotation.dart';

part 'kanban_model.freezed.dart';
part 'kanban_model.g.dart';

@freezed 
class KanbanModel with _$KanbanModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory KanbanModel({
    DateTime? createDate,
    String? description,
    DateTime? finishDate,
    String? level,
    String? responsible,
    String? status,
    String? title,
    DateTime? updateDate
  }) = _KanbanModel;

  factory KanbanModel.fromJson(Map<String, dynamic> json) => _$KanbanModelFromJson(json);

}

@freezed 
class Kanban with _$Kanban {
  factory Kanban.data(KanbanModel kanbanModel) = KanbanData;
  factory Kanban.none() = KanbanNone;
  factory Kanban.loading() = KanbanLoading;
}
