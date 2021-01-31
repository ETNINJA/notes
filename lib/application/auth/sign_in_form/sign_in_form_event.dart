part of 'sign_in_form_bloc.dart';
part of 'sign_in_form_event.freezed.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.started() = _Started;

  // Notice that these events take in "raw" unvalidated Strings
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}