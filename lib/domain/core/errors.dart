import 'package:notes_DDD/domain/core/failures.dart';

class UnexpectedValureError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValureError({
    this.valueFailure,
  });

  @override
  String toString() {
    const explanation = 'Unrecoverable error point. Terminating!';
    return Error.safeToString('$explanation \n Failure was $valueFailure');
  }
}
