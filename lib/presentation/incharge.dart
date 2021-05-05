import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incharge/application/auth/auth_bloc.dart';
import 'package:incharge/injection.dart';
import 'package:incharge/presentation/router/app_router.gr.dart';

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
      child: MaterialApp.router(
        routerDelegate: getIt<AppRouter>().delegate(),
        routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}
