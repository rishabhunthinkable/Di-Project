// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/auth_bloc.dart' as _i3;
import '../repository/auth_repo.dart' as _i4;
import '../repository/firebase_auth_repo.dart' as _i8;
import '../repository/google_auth_repo.dart' as _i5;
import '../third_party_packages/firebase_auth.dart' as _i6;
import '../third_party_packages/google_auth.dart' as _i7;
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
  gh.singleton<_i4.AuthRepo>(
    _i5.GoogleAuthRepo(),
    instanceName: 'GoogleAuthRepo',
    registerFor: {_dev},
  );
  gh.lazySingletonAsync<_i6.FirebaseAuth>(() => diModule.firebaseAuth);
  gh.lazySingletonAsync<_i7.GoogleAuth>(() => diModule.googleAuth);
  gh.singletonAsync<_i4.AuthRepo>(
    () async => _i8.FirebaseAuthRepo(await get.getAsync<_i6.FirebaseAuth>()),
    instanceName: 'FirebaseAuthRepo',
    registerFor: {_dev},
  );
  return get;
}

class _$DiModule extends _i9.DiModule {}
