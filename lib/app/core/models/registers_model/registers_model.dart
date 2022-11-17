import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'registers_model.freezed.dart';
part 'registers_model.g.dart';

@freezed
class RegistersModel with _$RegistersModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory RegistersModel(
      {String? accountBank,
      double? accountValue,
      @JsonKey(fromJson: _fromJson) String? date,
      String? movementCurrency,
      String? movementDetail}) = _RegistersModel;

  factory RegistersModel.fromJson(Map<String, dynamic> json) =>
      _$RegistersModelFromJson(json);
}

String _fromJson(Timestamp timestamp) {
  final DateTime dateTime = timestamp.toDate();
  return DateFormat('dd/MM').format(dateTime);
}
