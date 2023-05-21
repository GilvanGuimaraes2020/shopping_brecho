import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_brecho/app/core/models/account_register_model/account_register_model.dart';

part 'account_register_group_model.freezed.dart';

@freezed
class AccountRegisterGroupModel with _$AccountRegisterGroupModel {
  factory AccountRegisterGroupModel({
    String? group,
    AccountRegisterModel? register,
  }) = _AccountRegisterGroupModel;

  factory AccountRegisterGroupModel.fromJson(Map<String, dynamic> json) =>
      _$AccountRegisterGroupModelFromJson(json);
}

@freezed
class AccountRegisterGroup with _$AccountRegisterGroup {
  factory AccountRegisterGroup.data(AccountRegisterGroupModel register) =
      AccountRegisterGroupData;
}
