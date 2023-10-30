import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_cubit.freezed.dart';

part 'base_state.dart';

abstract class BaseCubit<S> extends Cubit<BaseCubitState<S>> {
  BaseCubit(super.initialState);
}
