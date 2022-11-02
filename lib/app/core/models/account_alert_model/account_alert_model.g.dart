// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountAlertModel _$$_AccountAlertModelFromJson(Map<String, dynamic> json) =>
    _$_AccountAlertModel(
      json['isrecurrent'] as bool?,
      json['account'] as String?,
      _parseToDateTime(json['due'] as Timestamp),
      (json['value'] as num?)?.toDouble(),
      json['is_active'] as bool?,
      json['is_paid'] as bool?,
    );

Map<String, dynamic> _$$_AccountAlertModelToJson(
        _$_AccountAlertModel instance) =>
    <String, dynamic>{
      'isrecurrent': instance.isrecurrent,
      'account': instance.account,
      'due': instance.due?.toIso8601String(),
      'value': instance.value,
      'is_active': instance.isActive,
      'is_paid': instance.isPaid,
    };
