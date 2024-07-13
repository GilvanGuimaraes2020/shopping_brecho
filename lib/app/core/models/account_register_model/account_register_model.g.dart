// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountRegisterModelImpl _$$AccountRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountRegisterModelImpl(
      typeName: json['type_name'] as String?,
      registers: (json['registers'] as List<dynamic>?)
          ?.map((e) => RegistersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccountRegisterModelImplToJson(
        _$AccountRegisterModelImpl instance) =>
    <String, dynamic>{
      'type_name': instance.typeName,
      'registers': instance.registers?.map((e) => e.toJson()).toList(),
    };
