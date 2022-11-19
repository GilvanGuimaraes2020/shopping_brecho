// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountRegisterModel _$$_AccountRegisterModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccountRegisterModel(
      accountBank: json['account_bank'] as String?,
      accountValue: (json['account_value'] as num?)?.toDouble(),
      date: _fromJson(json['date'] as Timestamp),
      movementCurrency: json['movement_currency'] as String?,
      movementDetail: json['movement_detail'] as String?,
    );

Map<String, dynamic> _$$_AccountRegisterModelToJson(
        _$_AccountRegisterModel instance) =>
    <String, dynamic>{
      'account_bank': instance.accountBank,
      'account_value': instance.accountValue,
      'date': instance.date,
      'movement_currency': instance.movementCurrency,
      'movement_detail': instance.movementDetail,
    };
