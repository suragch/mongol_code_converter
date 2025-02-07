import 'package:get_it/get_it.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<ConverterService>(() => ConverterService());
}
