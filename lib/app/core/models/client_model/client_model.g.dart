// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientModelImpl _$$ClientModelImplFromJson(Map<String, dynamic> json) =>
    _$ClientModelImpl(
      id: json['id'] as String?,
      address: json['address'] as String?,
      neighborhood: json['neighborhood'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ClientModelImplToJson(_$ClientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'neighborhood': instance.neighborhood,
      'name': instance.name,
      'phone': instance.phone,
      'number': instance.number,
    };
