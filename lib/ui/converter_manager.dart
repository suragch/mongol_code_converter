import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';
import 'package:mongol_code_converter/service_locator.dart';

class ConverterManager extends ChangeNotifier {
  final converterService = serviceLocator<ConverterService>();

  final textNotifier = TextNotifier();

  void convertUnicodeToCmsCode() {
    var text = converterService.convertMenksoftToUnicode(textNotifier.value);
    text = converterService.convertUnicodeToCmsCode(textNotifier.value);
    textNotifier.setText(text);
  }

  void convertUnicodeToMenksoft() {
    final text = converterService.convertUnicodeToMenksoft(textNotifier.value);
    textNotifier.setText(text);
  }

  void convertMenksoftToUnicode() {
    final text = converterService.convertMenksoftToUnicode(textNotifier.value);
    textNotifier.setText(text);
  }
}

class TextNotifier extends ValueNotifier<String> {
  TextNotifier() : super('');

  void setText(String? text) {
    value = text ?? '';
  }
}
