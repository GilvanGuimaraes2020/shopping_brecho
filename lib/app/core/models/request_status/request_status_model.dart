import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_status_model.freezed.dart';

@freezed 
class RequestStatus with _$RequestStatus {
  factory RequestStatus.success() = RequestStatusSuccess;
  factory RequestStatus.loading() = RequestStatusLoading;
  factory RequestStatus.none() = RequestStatusNone;
  factory RequestStatus.error([Object? e]) = RequestStatusError;
}
