import 'package:flutter/foundation.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';

class ConverterManager extends ChangeNotifier {
  final converter = ConverterService();

  final textNotifier = ValueNotifier<String>('');

  void convertUnicodeToCmsCode() {
    // var text = converter.convertToUnicode(textNotifier.value);
    // text = converter.convertToCmsCode(textNotifier.value);
    textNotifier.value = converter.convertToCmsCode(textNotifier.value);
  }

  void convertUnicodeToMenksoft() {
    final text = converter.convertToMenksoft(textNotifier.value);
    textNotifier.value = text;
  }

  void convertMenksoftToUnicode() {
    final text = converter.convertToUnicode(textNotifier.value);
    textNotifier.value = text;
  }

  void setText(String? text) {
    textNotifier.value = text ?? '';
  }
}
