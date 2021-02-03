import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:notes_DDD/domain/auth/auth_failure.dart';
import 'package:notes_DDD/domain/auth/i_auth_facade.dart';
import 'package:notes_DDD/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart'; // cannot be generate in the file itself
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      emailChanged: (e) async* {},
      passwordChanged: (e) async* {},
      registerWithEmailAndPasswordPressed: (e) async* {},
      signInWithEmailAndPasswordPressed: (e) async* {},
      signInWithGooglePressed: (e) async* {},
    );
  }
}
