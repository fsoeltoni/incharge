import 'package:incharge/presentation/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppRouterInjectableModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
