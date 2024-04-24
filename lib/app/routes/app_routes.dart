part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const LOGIN_SCREEN = _Paths.LOGIN_SCREEN;
  static const DEPARTMENT = _Paths.DEPARTMENT;
  static const USERS = _Paths.USERS;
  static const SPLASH = _Paths.SPLASH;
}

abstract class _Paths {
  _Paths._();
  static const LOGIN_SCREEN = '/login-screen';
  static const DEPARTMENT = '/department';
  static const USERS = '/users';
  static const SPLASH = '/splash';
}
