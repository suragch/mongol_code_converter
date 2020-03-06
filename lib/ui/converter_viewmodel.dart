import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter_service.dart';
import 'package:mongol_code_converter/service_locator.dart';

class ConverterViewModel extends ChangeNotifier {

  final converterService = serviceLocator<ConverterService>();

  Future<String> convertUnicodeToCmsCode(String unicodeText) async {
    return await converterService.convertUnicodeToCmsCode(unicodeText);
  }

  Future<String> convertUnicodeToMenksoft(String unicode) async {
    return await converterService.convertUnicodeToMenksoft(unicode);
  }

  Future<String> convertMenksoftToUnicode(String menksoft) async {
    return await converterService.convertMenksoftToUnicode(menksoft);
  }
}