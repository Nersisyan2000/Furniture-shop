import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:furniture_shop/data/locator/service_locator.config.dart';

GetIt getIt = GetIt.I;

@InjectableInit()
void configureDependencies() => getIt.init();
