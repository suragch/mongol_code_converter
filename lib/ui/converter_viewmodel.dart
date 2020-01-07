import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter_service.dart';
import 'package:mongol_code_converter/service_locator.dart';

class ConverterViewModel extends ChangeNotifier {

  final converterService = serviceLocator<ConverterService>();

  Future<String> convertUnicodeToCmsCode(String unicodeText) async {
    final cmsText = await converterService.convertUnicodeToCmsCode(unicodeText);
    return cmsText;
  }
}