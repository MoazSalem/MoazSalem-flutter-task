import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final _sl = GetIt.instance;

// Register dependencies
@InjectableInit()
Future<void> configureDependencies() async => await _sl.init();
