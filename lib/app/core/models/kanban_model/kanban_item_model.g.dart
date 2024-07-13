// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KanbanItemModelImpl _$$KanbanItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KanbanItemModelImpl(
      id: json['id'] as String?,
      kanban: json['kanban'] == null
          ? null
          : KanbanModel.fromJson(json['kanban'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KanbanItemModelImplToJson(
        _$KanbanItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kanban': instance.kanban?.toJson(),
    };
