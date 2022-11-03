import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'account_register_model.freezed.dart';
part 'account_register_model.g.dart';

@freezed
class AccountRegisterModel with _$AccountRegisterModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory AccountRegisterModel(
      {String? accountBank,
      double? accountValue,
      @JsonKey(fromJson: _fromJson) String? date,
      String? movementCurrency,
      String? movementDetail}) = _AccountRegisterModel;

  factory AccountRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$AccountRegisterModelFromJson(json);
}

String _fromJson(Timestamp timestamp) {
  final DateTime dateTime = timestamp.toDate();
  return DateFormat('dd/MM').format(dateTime);
}

@freezed
class AccountRegister with _$AccountRegister {
  factory AccountRegister.data(List<AccountRegisterModel> listAccountRegister) =
      AccountRegisterData;
  factory AccountRegister.loading() = AccountRegisterLoading;
  factory AccountRegister.error([Object? error]) = AccountRegisterError;
  factory AccountRegister.none() = AccountRegisterNone;
}
