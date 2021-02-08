import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_DDD/domain/core/errors.dart';
import 'package:notes_DDD/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  //helper method for firbaseAuthFacade
  /// Throws [UnexpectedValureError] containing [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValureError(valueFailure: f), id);
    //(f) => throw UnexpectedValureError(valueFailure: f), (r) => r);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  bool isValid() => value.isRight();

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}
