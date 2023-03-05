// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/auth_bloc.dart' as _i6;
import '../repository/auth_repo.dart' as _i3;
import '../repository/firebase_auth_repo.dart' as _i4;
import '../repository/google_auth_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i3.AuthRepo>(
    _i4.FirebaseAuthRepo(),
    instanceName: 'FirebaseAuthRepo',
  );
  gh.singleton<_i3.AuthRepo>(
    _i5.GoogleAuthRepo(),
    instanceName: 'GoogleAuthRepo',
  );
  gh.factory<_i6.AuthBloc>(
      () => _i6.AuthBloc(get<_i3.AuthRepo>(instanceName: 'FirebaseAuthRepo')));
  return get;
}
