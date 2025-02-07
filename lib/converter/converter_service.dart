import 'package:mongol_code/mongol_code.dart';

import 'cms/cms_code.dart';

class ConverterService {
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

  String convertMenksoftToUnicode(String menksoft) {
    final converter = MongolCode.instance;
    return converter.menksoftToUnicode(menksoft);
  }

  String convertUnicodeToMenksoft(String unicode) {
    final converter = MongolCode.instance;
    return converter.unicodeToMenksoft(unicode);
  }
}
