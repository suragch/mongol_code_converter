import 'package:mongol_code/mongol_code.dart';

import 'cms_code.dart';

abstract class ConverterService {
  Future<String> convertUnicodeToCmsCode(String unicodeText);
  Future<String> convertUnicodeToMenksoft(String unicode);
  Future<String> convertMenksoftToUnicode(String menksoft);
}

class ConverterServiceImpl implements ConverterService {

  @override
  Future<String> convertUnicodeToCmsCode(String unicodeText) async {
    if (unicodeText == null) {
      return '';
    }

    final unicodeConverter = MongolCode.instance;
    final ugeiBugFix = findAndReplaceNnbsUgei (unicodeText);
    final menksoftText = unicodeConverter.unicodeToMenksoft(ugeiBugFix);

    final cmsConverter = CmsCode.instance;
    final cmsText = cmsConverter.menksoftToCms(menksoftText);
    return cmsText;
  }

  String findAndReplaceNnbsUgei(String unicodeText) {
    final withNnbs = ' ᠦᠭᠡᠢ';
    final withSpace = ' ᠦᠭᠡᠢ';
    return unicodeText.replaceAll(withNnbs, withSpace);
  }

  @override
  Future<String> convertMenksoftToUnicode(String menksoft) async {
    if (menksoft == null) {
      return '';
    }
    final converter = MongolCode.instance;
    return converter.menksoftToUnicode(menksoft);
  }

  @override
  Future<String> convertUnicodeToMenksoft(String unicode) async {
    if (unicode == null) {
      return '';
    }
    final converter = MongolCode.instance;
    return converter.unicodeToMenksoft(unicode);
  }

}