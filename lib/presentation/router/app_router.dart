import 'package:auto_route/auto_route.dart';
import 'package:incharge/presentation/main/main_page.dart';
import 'package:incharge/presentation/sign_in/sign_in_page.dart';
import 'package:incharge/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: MainPage),
  ],
)
class $AppRouter {}
