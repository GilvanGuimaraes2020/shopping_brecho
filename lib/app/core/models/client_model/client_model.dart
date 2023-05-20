import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed 
class ClientModel with _$ClientModel{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory ClientModel({
    String? id,
    String? address,
    String? neighborhood,
    String? name,
    String? phone,
    int? number 
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) => _$ClientModelFromJson(json);
}

@freezed 
class Client with _$Client{
  const factory Client.data(List<ClientModel> client) = ClientData;
  const  factory Client.empty() = ClientEmpty;
  const factory Client.none() = ClientNone;
  const factory Client.error([Object? error]) = ClientError;
  const factory Client.loading()=ClientLoading;
}
