// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountRegisterModel _$$_AccountRegisterModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccountRegisterModel(
      typeName: json['type_name'] as String?,
      registers: (json['registers'] as List<dynamic>?)
          ?.map((e) => RegistersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccountRegisterModelToJson(
        _$_AccountRegisterModel instance) =>
    <String, dynamic>{
      'type_name': instance.typeName,
      'registers': instance.registers?.map((e) => e.toJson()).toList(),
    };
