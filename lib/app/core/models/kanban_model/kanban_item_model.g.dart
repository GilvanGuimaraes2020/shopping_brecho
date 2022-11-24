// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KanbanItemModel _$$_KanbanItemModelFromJson(Map<String, dynamic> json) =>
    _$_KanbanItemModel(
      id: json['id'] as String?,
      kanban: json['kanban'] == null
          ? null
          : KanbanModel.fromJson(json['kanban'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KanbanItemModelToJson(_$_KanbanItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kanban': instance.kanban?.toJson(),
    };
