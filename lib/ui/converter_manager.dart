import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';

class ConverterManager extends ChangeNotifier {
  final converter = ConverterService();

  final textNotifier = ValueNotifier<String>('');

  void convertUnicodeToCmsCode() {
    var text = converter.convertMenksoftToUnicode(textNotifier.value);
    text = converter.convertUnicodeToCmsCode(textNotifier.value);
    textNotifier.value = text;
  }

  void convertUnicodeToMenksoft() {
    final text = converter.convertUnicodeToMenksoft(textNotifier.value);
    textNotifier.value = text;
  }

  void convertMenksoftToUnicode() {
    final text = converter.convertMenksoftToUnicode(textNotifier.value);
    textNotifier.value = text;
  }

  void setText(String? text) {
    textNotifier.value = text ?? '';
  }
}
