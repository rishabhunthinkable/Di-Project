// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/auth_bloc.dart' as _i3;
import '../repository/auth_repo.dart' as _i6;
import '../repository/firebase_auth_repo.dart' as _i7;
import '../repository/google_auth_repo.dart' as _i8;
import '../third_party_packages/firebase_auth.dart' as _i4;
import '../third_party_packages/google_auth.dart' as _i5;
import 'di_module.dart' as _i9;

const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $init(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final diModule = _$DiModule();
  gh.factory<_i3.AuthBloc>(
    () => _i3.AuthBloc(),
    registerFor: {_dev},
  );
  gh.lazySingletonAsync<_i4.FirebaseAuth>(
    () => diModule.firebaseAuth,
    registerFor: {_dev},
  );
  gh.lazySingletonAsync<_i5.GoogleAuth>(
    () => diModule.googleAuth,
    registerFor: {_dev},
  );
  gh.singletonAsync<_i6.AuthRepo>(
    () async => _i7.FirebaseAuthRepo(await get.getAsync<_i4.FirebaseAuth>()),
    instanceName: 'FirebaseAuthRepo',
    registerFor: {_dev},
  );
  gh.singletonAsync<_i6.AuthRepo>(
    () async => _i8.GoogleAuthRepo(await get.getAsync<_i5.GoogleAuth>()),
    instanceName: 'GoogleAuthRepo',
    registerFor: {_dev},
  );
  return get;
}

class _$DiModule extends _i9.DiModule {}
