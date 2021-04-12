import 'package:mongol_code/mongol_code.dart';

import 'cms_code.dart';

abstract class ConverterService {
  String convertUnicodeToCmsCode(String unicodeText);
  String convertUnicodeToMenksoft(String unicode);
  String convertMenksoftToUnicode(String menksoft);
}

class ConverterServiceImpl implements ConverterService {

  @override
  String convertUnicodeToCmsCode(String unicodeText) {
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
  String convertMenksoftToUnicode(String menksoft) {
    if (menksoft == null) {
      return '';
    }
    final converter = MongolCode.instance;
    return converter.menksoftToUnicode(menksoft);
  }

  @override
  String convertUnicodeToMenksoft(String unicode) {
    if (unicode == null) {
      return '';
    }
    final converter = MongolCode.instance;
    return converter.unicodeToMenksoft(unicode);
  }

}