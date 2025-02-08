import 'package:mongol_code/mongol_code.dart';
import 'package:mongol_code_converter/converter/bolorsoft/bolorsoft.dart';

import 'cms/cms_code.dart';

class ConverterService {
  String convertUnicodeToCmsCode(String unicodeText) {
    final unicodeConverter = MongolCode.instance;
    final ugeiBugFix = _findAndReplaceNnbsUgei(unicodeText);
    final bolorsoftFix = _replacedBolorsoftRefinedModel(ugeiBugFix);
    final menksoftText = unicodeConverter.unicodeToMenksoft(bolorsoftFix);

    final cmsConverter = CmsCode.instance;
    final cmsText = cmsConverter.menksoftToCms(menksoftText);
    return cmsText;
  }

  String _findAndReplaceNnbsUgei(String unicodeText) {
    final withNnbs = ' ᠦᠭᠡᠢ';
    final withSpace = ' ᠦᠭᠡᠢ';
    return unicodeText.replaceAll(withNnbs, withSpace);
  }

  String _replacedBolorsoftRefinedModel(String text) {
    final codeUnits = text.codeUnits;
    for (int i = 0; i < codeUnits.length; i++) {
      if (codeUnits[i] == Bolorsoft.KE) {
        codeUnits[i] = Unicode.QA;
      } else if (codeUnits[i] == Bolorsoft.GE) {
        codeUnits[i] = Unicode.GA;
      }
    }
    return String.fromCharCodes(codeUnits);
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
