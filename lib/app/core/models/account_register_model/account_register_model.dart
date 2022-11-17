import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_brecho/app/core/models/registers_model/registers_model.dart';

part 'account_register_model.freezed.dart';
part 'account_register_model.g.dart';

@freezed
class AccountRegisterModel with _$AccountRegisterModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory AccountRegisterModel(
      {String? typeName,
      List<RegistersModel>? registers}) = _AccountRegisterModel;

  factory AccountRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$AccountRegisterModelFromJson(json);
}

@freezed
class AccountRegister with _$AccountRegister {
  factory AccountRegister.data(List<AccountRegisterModel> listAccountRegister) =
      AccountRegisterData;
  factory AccountRegister.loading() = AccountRegisterLoading;
  factory AccountRegister.error([Object? error]) = AccountRegisterError;
  factory AccountRegister.none() = AccountRegisterNone;
}
