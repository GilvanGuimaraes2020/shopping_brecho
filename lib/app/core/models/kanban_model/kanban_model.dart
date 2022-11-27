import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'kanban_model.freezed.dart';
part 'kanban_model.g.dart';

@freezed 
class KanbanModel with _$KanbanModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory KanbanModel({
    @JsonKey(fromJson: _parseFromCreateDate) String? createDate,
    String? description,
    @JsonKey(fromJson: _parseFromfinishDate)  String? finishDate,
    String? level,
    String? responsible,
    String? status,
    String? title,
    @JsonKey(fromJson: _parseFromUpdateDate )  String? updateDate
  }) = _KanbanModel;

  factory KanbanModel.fromJson(Map<String, dynamic> json) => _$KanbanModelFromJson(json);

}

String? _parseFromfinishDate(Timestamp timestamp){
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

String? _parseFromCreateDate(Timestamp timestamp){
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

String? _parseFromUpdateDate(Timestamp timestamp){
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

@freezed 
class Kanban with _$Kanban {
  factory Kanban.data(KanbanModel kanbanModel) = KanbanData;
  factory Kanban.none() = KanbanNone;
  factory Kanban.loading() = KanbanLoading;
}
