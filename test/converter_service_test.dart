import 'package:flutter_test/flutter_test.dart';
import 'package:mongol_code/mongol_code.dart';
import 'package:mongol_code_converter/converter/converter_service.dart';

void main() {
  test(
    'empty string returns empty string',
    () async {
      final converter = ConverterService();
      final unicodeText = '';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = '';
      expect(actual, expected);
    },
  );

  test(
    'ASCII returns same result',
    () async {
      final converter = ConverterService();
      final unicodeText = 'abc';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'abc';
      expect(actual, expected);
    },
  );

  test(
    'Mongolian Unicode returns CMs code',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠮᠣᠩᠭᠣᠯ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'Moehgo&';
      expect(actual, expected);
    },
  );

  test(
    'word test: shinee',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠰᠢᠨ᠎ᠡ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'Si%T';
      expect(actual, expected);
    },
  );

  test(
    'word test: wolf',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠴᠢᠨᠣ᠎ᠡ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'CinOT';
      expect(actual, expected);
    },
  );

  test(
    'word test: bi',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠪᠢ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'buA';
      expect(actual, expected);
    },
  );

  test(
    'word test: bol',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠪᠣᠯ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'B&';
      expect(actual, expected);
    },
  );

  test(
    'word test: bichig',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠪᠢᠴᠢᠭ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'buciit';
      expect(actual, expected);
    },
  );

  test(
    'word test: Beijing',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠪᠧᠵᠢᠩ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'b`jieit';
      expect(actual, expected);
    },
  );

  test(
    'word test: orga',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠤᠷᠭ᠎ᠠ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'for)T';
      expect(actual, expected);
    },
  );

  test(
    'word test: ugei',
    () async {
      final converter = ConverterService();
      final unicodeText = String.fromCharCode(Unicode.NNBS) + 'ᠦᠭᠡᠢ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = ' foikEI';
      expect(actual, expected);
    },
  );

  test(
    'word test: replace all ugei',
    () async {
      final converter = ConverterService();
      final unicodeText = 'asf ᠦᠭᠡᠢ adfasd asdfa ᠦᠭᠡᠢadfsdf';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'asf foikEI adfasd asdfa foikEIadfsdf';
      expect(actual, expected);
    },
  );

  test(
    'word test: yamar',
    () async {
      final converter = ConverterService();
      final unicodeText = 'ᠶᠠᠮᠠᠷ';
      final actual = converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'Yeme*';
      expect(actual, expected);
    },
  );
}
