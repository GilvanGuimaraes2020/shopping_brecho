import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shopping_brecho/app/core/models/enums/status_due_enum.dart';

part 'kanban_model.freezed.dart';
part 'kanban_model.g.dart';

@freezed
class KanbanModel with _$KanbanModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory KanbanModel(
          {@JsonKey(fromJson: _parseFromCreateDate) String? createDate,
          String? description,
          @JsonKey(fromJson: _parseToDatetimeFinishedDate ) DateTime? finishDate,
          String? level,
          String? responsible,
          String? status,
          String? title,
          @JsonKey(fromJson: _parseFromUpdateDate) String? updateDate}) =
      _KanbanModel;

  KanbanModel._();

  String get shortFinishedDate {
    final DateFormat dateFormat = DateFormat("dd/MM");
    return dateFormat.format(finishDate!);
  }

  StatusLimitEnum get statusLimit{
    final DateTime currentDate = DateTime.now();
    final int intervalDate = finishDate!.difference(currentDate).inDays;
    if(intervalDate > 3) {
      return StatusLimitEnum.inTheLimit;
    } else if(intervalDate <=3 && intervalDate>=0){
      return StatusLimitEnum.limitTime;
    } else{
      return StatusLimitEnum.late;
    }
  }

  factory KanbanModel.fromJson(Map<String, dynamic> json) =>
      _$KanbanModelFromJson(json);
}

DateTime _parseToDatetimeFinishedDate(Timestamp timestamp){
return timestamp.toDate();
}

String? _parseFromCreateDate(Timestamp timestamp) {
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

String? _parseFromUpdateDate(Timestamp timestamp) {
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

@freezed
class Kanban with _$Kanban {
  factory Kanban.data(KanbanModel kanbanModel) = KanbanData;
  factory Kanban.none() = KanbanNone;
  factory Kanban.loading() = KanbanLoading;
}
