// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KanbanModel _$$_KanbanModelFromJson(Map<String, dynamic> json) =>
    _$_KanbanModel(
      createDate: json['create_date'] == null
          ? null
          : DateTime.parse(json['create_date'] as String),
      description: json['description'] as String?,
      finishDate: json['finish_date'] == null
          ? null
          : DateTime.parse(json['finish_date'] as String),
      level: json['level'] as String?,
      responsible: json['responsible'] as String?,
      status: json['status'] as String?,
      title: json['title'] as String?,
      updateDate: json['update_date'] == null
          ? null
          : DateTime.parse(json['update_date'] as String),
    );

Map<String, dynamic> _$$_KanbanModelToJson(_$_KanbanModel instance) =>
    <String, dynamic>{
      'create_date': instance.createDate?.toIso8601String(),
      'description': instance.description,
      'finish_date': instance.finishDate?.toIso8601String(),
      'level': instance.level,
      'responsible': instance.responsible,
      'status': instance.status,
      'title': instance.title,
      'update_date': instance.updateDate?.toIso8601String(),
    };
