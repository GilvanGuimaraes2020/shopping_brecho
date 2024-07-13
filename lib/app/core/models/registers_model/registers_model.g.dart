// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistersModelImpl _$$RegistersModelImplFromJson(Map<String, dynamic> json) =>
    _$RegistersModelImpl(
      accountBank: json['account_bank'] as String?,
      accountValue: (json['account_value'] as num?)?.toDouble(),
      date: _fromJson(json['date'] as Timestamp),
      movementCurrency: json['movement_currency'] as String?,
      movementDetail: json['movement_detail'] as String?,
      accountMovement: json['account_movement'] as String?,
      installment: (json['installment'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegistersModelImplToJson(
        _$RegistersModelImpl instance) =>
    <String, dynamic>{
      'account_bank': instance.accountBank,
      'account_value': instance.accountValue,
      'date': _toJson(instance.date),
      'movement_currency': instance.movementCurrency,
      'movement_detail': instance.movementDetail,
      'account_movement': instance.accountMovement,
      'installment': instance.installment,
    };
