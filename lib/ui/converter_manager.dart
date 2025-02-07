import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';

class ConverterManager extends ChangeNotifier {
  final converter = ConverterService();

  final textNotifier = TextNotifier();

  void convertUnicodeToCmsCode() {
    var text = converter.convertMenksoftToUnicode(textNotifier.value);
    text = converter.convertUnicodeToCmsCode(textNotifier.value);
    textNotifier.setText(text);
  }

  void convertUnicodeToMenksoft() {
    final text = converter.convertUnicodeToMenksoft(textNotifier.value);
    textNotifier.setText(text);
  }

  void convertMenksoftToUnicode() {
    final text = converter.convertMenksoftToUnicode(textNotifier.value);
    textNotifier.setText(text);
  }
}

class TextNotifier extends ValueNotifier<String> {
  TextNotifier() : super('');

  void setText(String? text) {
    value = text ?? '';
  }
}
