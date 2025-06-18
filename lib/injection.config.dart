// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auvnet_internship_assessment/features/auth/data/repositories/auth_repository.dart'
    as _i976;
import 'package:auvnet_internship_assessment/features/auth/presentation/states/auth_state/auth_bloc.dart'
    as _i308;
import 'package:auvnet_internship_assessment/features/auth/presentation/states/login_state/login_bloc.dart'
    as _i1064;
import 'package:auvnet_internship_assessment/features/barrel.dart' as _i457;
import 'package:auvnet_internship_assessment/features/user/data/repositories/user_repository.dart'
    as _i274;
import 'package:auvnet_internship_assessment/features/user/presentation/states/user_state/user_bloc.dart'
    as _i232;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i976.AuthRepository>(() => _i976.AuthRepository());
    gh.lazySingleton<_i274.UserRepository>(() => _i274.UserRepository());
    gh.factory<_i232.UserBloc>(
      () => _i232.UserBloc(gh<_i457.UserRepository>()),
    );
    gh.factory<_i308.AuthBloc>(
      () => _i308.AuthBloc(
        gh<_i457.AuthRepository>(),
        gh<_i457.UserRepository>(),
      ),
    );
    gh.factory<_i1064.LoginBloc>(
      () => _i1064.LoginBloc(gh<_i457.AuthRepository>()),
    );
    return this;
  }
}
