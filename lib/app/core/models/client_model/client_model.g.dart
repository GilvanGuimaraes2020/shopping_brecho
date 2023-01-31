// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientModel _$$_ClientModelFromJson(Map<String, dynamic> json) =>
    _$_ClientModel(
      id: json['id'] as String?,
      address: json['address'] as String?,
      neighborhood: json['neighborhood'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$_ClientModelToJson(_$_ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'neighborhood': instance.neighborhood,
      'name': instance.name,
      'phone': instance.phone,
      'number': instance.number,
    };
