import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(
    initializerName: r'$init',
    asExtension: false,
    usesNullSafety: true,
    preferRelativeImports: true
)
 configureDependencies() => $init(getIt,environment: dev.name);
