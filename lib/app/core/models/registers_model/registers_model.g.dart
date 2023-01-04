// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistersModel _$$_RegistersModelFromJson(Map<String, dynamic> json) =>
    _$_RegistersModel(
      accountBank: json['account_bank'] as String?,
      accountValue: (json['account_value'] as num?)?.toDouble(),
      date: _fromJson(json['date'] as Timestamp),
      movementCurrency: json['movement_currency'] as String?,
      movementDetail: json['movement_detail'] as String?,
      installment: json['installment'] as int?,
    );

Map<String, dynamic> _$$_RegistersModelToJson(_$_RegistersModel instance) =>
    <String, dynamic>{
      'account_bank': instance.accountBank,
      'account_value': instance.accountValue,
      'date': _toJson(instance.date),
      'movement_currency': instance.movementCurrency,
      'movement_detail': instance.movementDetail,
      'installment': instance.installment,
    };
