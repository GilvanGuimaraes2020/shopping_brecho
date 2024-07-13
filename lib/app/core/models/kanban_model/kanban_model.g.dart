// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KanbanModelImpl _$$KanbanModelImplFromJson(Map<String, dynamic> json) =>
    _$KanbanModelImpl(
      createDate: _parseFromCreateDate(json['create_date'] as Timestamp),
      description: json['description'] as String?,
      finishDate:
          _parseToDatetimeFinishedDate(json['finish_date'] as Timestamp),
      level: json['level'] as String?,
      responsible: json['responsible'] as String?,
      status: json['status'] as String?,
      title: json['title'] as String?,
      updateDate: _parseFromUpdateDate(json['update_date'] as Timestamp),
    );

Map<String, dynamic> _$$KanbanModelImplToJson(_$KanbanModelImpl instance) =>
    <String, dynamic>{
      'create_date': instance.createDate,
      'description': instance.description,
      'finish_date': instance.finishDate?.toIso8601String(),
      'level': instance.level,
      'responsible': instance.responsible,
      'status': instance.status,
      'title': instance.title,
      'update_date': instance.updateDate,
    };
