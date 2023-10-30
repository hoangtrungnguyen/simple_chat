part of 'base_cubit.dart';

@freezed
class BaseCubitState<T> with _$BaseCubitState<T> {
  const factory BaseCubitState.initial([@Default(null) T? data]) = Initial;

  const factory BaseCubitState.inProgress([@Default(null) T? data]) = InProgress;

  const factory BaseCubitState.failure(Exception exception, [@Default(null) T? data]) = Failure;

  factory BaseCubitState.next({
    required T data,
  }) = Next<T>;
}
