import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incharge/application/auth/auth_bloc.dart';
import 'package:incharge/injection.dart';
import 'package:incharge/presentation/sign_in/sign_in_page.dart';

class Incharge extends StatelessWidget {
  const Incharge() : super();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SignInPage(),
        ),
      ),
    );
  }
}
