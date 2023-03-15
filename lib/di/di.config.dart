// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:di_project/blocs/auth_bloc.dart' as _i3;
import 'package:di_project/main.dart' as _i10;
import 'package:di_project/repository/auth_repo.dart' as _i7;
import 'package:di_project/repository/firebase_auth_repo.dart' as _i8;
import 'package:di_project/repository/google_auth_repo.dart' as _i9;
import 'package:di_project/third_party_packages/firebase_auth.dart' as _i4;
import 'package:di_project/third_party_packages/google_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'di_module.dart' as _i11;

const String _dev = 'dev';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final diModule = _$DiModule();
  gh.factory<_i3.AuthBloc>(
    () => _i3.AuthBloc(),
    registerFor: {_dev},
  );
  gh.factoryAsync<_i4.FirebaseAuth>(
    () => diModule.firebaseAuth,
    registerFor: {_dev},
  );
  gh.factoryAsync<_i5.GoogleAuth>(
    () => diModule.googleAuth,
    registerFor: {_dev},
  );
  gh.lazySingletonAsync<_i6.SharedPreferences>(() => diModule.sharedPref);
  gh.singletonAsync<_i7.AuthRepo>(
    () async => _i8.FirebaseAuthRepo(await gh.getAsync<_i4.FirebaseAuth>()),
    instanceName: 'FirebaseAuthRepo',
    registerFor: {_dev},
  );
  gh.singletonAsync<_i7.AuthRepo>(
    () async => _i9.GoogleAuthRepo(await gh.getAsync<_i5.GoogleAuth>()),
    instanceName: 'GoogleAuthRepo',
    registerFor: {_dev},
  );
  gh.factoryAsync<_i10.SharedPrefHelper>(() async =>
      _i10.SharedPrefHelper(await gh.getAsync<_i6.SharedPreferences>()));
  return getIt;
}

class _$DiModule extends _i11.DiModule {}
