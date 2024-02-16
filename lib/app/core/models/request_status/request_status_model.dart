import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_status_model.freezed.dart';

@freezed 
class RequestStatus with _$RequestStatus {
 const factory RequestStatus.success() = RequestStatusSuccess;
 const factory RequestStatus.loading() = RequestStatusLoading;
 const factory RequestStatus.none() = RequestStatusNone;
 const factory RequestStatus.error([Object? e]) = RequestStatusError;
 const factory RequestStatus.successWithData([Object? data]) = RequestStatusSuccessWithData;
}
