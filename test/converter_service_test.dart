
import 'package:flutter_test/flutter_test.dart';
import 'package:mongol_code_converter/converter_service.dart';

void main() {

  test(
    'empty string returns empty string',
    () async {
      final converter = ConverterServiceImpl();
      final unicodeText = '';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = '';
      expect(actual, expected);
    },
  );

  test(
    'null returns empty string',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = null;
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = '';
      expect(actual, expected);
    },
  );

  test(
    'ASCII returns same result',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'abc';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'abc';
      expect(actual, expected);
    },
  );

  test(
    'Mongolian Unicode returns CMs code',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠮᠣᠩᠭᠣᠯ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'Moehgo&';
      expect(actual, expected);
    },
  );

//  test(
//    'Every Menksoft character gets converted',
//        () async {
//      final converter = ConverterServiceImpl();
//      final start = Menksoft.MENKSOFT_START;
//      final end = Menksoft.MENKSOFT_END;
//      for (var codeUnit = start; codeUnit <= end; codeUnit++) {
//        final menksoftChar = String.fromCharCode(codeUnit);
//        final cmsChar = await converter.convertUnicodeToCmsCode(menksoftChar);
//        final cmsCodeUnit = cmsChar.codeUnitAt(0);
//        final isMenksoft = cmsCodeUnit >= start && cmsCodeUnit <= end;
//        if (isMenksoft) {
//          print(codeUnit);
//        }
//        expect(isMenksoft, false);
//      }
//    },
//  );

  test(
    'word test: shinee',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠰᠢᠨ᠎ᠡ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'Si%T';
      expect(actual, expected);
    },
  );

  test(
    'word test: wolf',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠴᠢᠨᠣ᠎ᠡ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'CinOT';
      expect(actual, expected);
    },
  );

//  test(
//    'word test: malla',
//        () async {
//      final converter = ConverterServiceImpl();
//      final unicodeText = 'ᠮᠠᠯᠯᠠ';
//      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
//      final expected = 'MexXa';
//      expect(actual, expected);
//    },
//  );

  test(
    'word test: bi',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠪᠢ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'buA';
      expect(actual, expected);
    },
  );

  test(
    'word test: bol',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠪᠣᠯ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'B&';
      expect(actual, expected);
    },
  );

  test(
    'word test: bichig',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠪᠢᠴᠢᠭ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'buciit';
      expect(actual, expected);
    },
  );

  test(
    'word test: Beijing',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠪᠧᠵᠢᠩ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'b`jieit';
      expect(actual, expected);
    },
  );

  test(
    'word test: orga',
        () async {
      final converter = ConverterServiceImpl();
      final unicodeText = 'ᠤᠷᠭ᠎ᠠ';
      final actual = await converter.convertUnicodeToCmsCode(unicodeText);
      final expected = 'for)T';
      expect(actual, expected);
    },
  );

}