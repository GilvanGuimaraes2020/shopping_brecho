import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_alert_model.freezed.dart';
part 'account_alert_model.g.dart';

@freezed
class AccountAlertModel with _$AccountAlertModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory AccountAlertModel(
      bool? isrecurrent,
      String? account,
      @JsonKey(fromJson: _parseToDateTime) DateTime? due,
      double? value,
      bool? isActive,
      bool? isPaid) = _AccountAlertModel;

  factory AccountAlertModel.fromJson(Map<String, dynamic> json) =>
      _$AccountAlertModelFromJson(json);
}

DateTime _parseToDateTime(Timestamp timestamp) {
  // final DateFormat dateFormat = DateFormat("dd/MM");
  // final String dateString =  dateFormat.format(timestamp.toDate());
  return timestamp.toDate();
}

@freezed
class AccountAlert with _$AccountAlert {
  factory AccountAlert.data(List<AccountAlertModel> accountAlertModel) =
      AccountAlertData;
  factory AccountAlert.error([Object? error]) = AccountAlertError;
  factory AccountAlert.loading() = AccountAlertLoading;
  factory AccountAlert.none() = AccountAlertNone;
}
