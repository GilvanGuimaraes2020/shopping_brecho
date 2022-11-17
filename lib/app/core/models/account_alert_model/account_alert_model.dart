import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'account_alert_model.freezed.dart';
part 'account_alert_model.g.dart';

@freezed
class AccountAlertModel with _$AccountAlertModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory AccountAlertModel(
      bool? isrecurrent,
      String? account,
      @JsonKey(fromJson: _parseToDateTime) String? due,
      double? value,
      bool? isActive,
      bool? isPaid) = _AccountAlertModel;

  factory AccountAlertModel.fromJson(Map<String, dynamic> json) =>
      _$AccountAlertModelFromJson(json);
}

String _parseToDateTime(Timestamp timestamp) {
  final DateFormat dateFormat = DateFormat("dd/MM");
  return dateFormat.format(timestamp.toDate());
}

@freezed
class AccountAlert with _$AccountAlert {
  factory AccountAlert.data(List<AccountAlertModel> accountAlertModel) =
      AccountAlertData;
  factory AccountAlert.error([Object? error]) = AccountAlertError;
  factory AccountAlert.loading() = AccountAlertLoading;
  factory AccountAlert.none() = AccountAlertNone;
}
