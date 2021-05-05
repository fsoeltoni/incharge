import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:incharge/domain/core/failures.dart';
import 'package:incharge/domain/core/validators.dart';
import 'package:incharge/domain/core/value_objects.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
