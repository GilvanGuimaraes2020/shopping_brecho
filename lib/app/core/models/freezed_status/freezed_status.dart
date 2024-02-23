import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_status.freezed.dart';

@freezed
class FreezedStatus<T> with _$FreezedStatus<T> {
  const factory FreezedStatus.data(T data) = FreezedStatusData;
  const factory FreezedStatus.success([T? data]) = FreezedStatusSuccess;
  const factory FreezedStatus.loading() = FreezedStatusLoading;
  const factory FreezedStatus.error([Object? error]) = FreezedStatusError;
  const factory FreezedStatus.empty() = FreezedStatusEmpty;
}
