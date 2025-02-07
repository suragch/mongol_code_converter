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
    final unicodeConverter = MongolCode.instance;
    final ugeiBugFix = findAndReplaceNnbsUgei(unicodeText);
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
    final converter = MongolCode.instance;
    return converter.menksoftToUnicode(menksoft);
  }

  @override
  String convertUnicodeToMenksoft(String unicode) {
    final converter = MongolCode.instance;
    return converter.unicodeToMenksoft(unicode);
  }
}
