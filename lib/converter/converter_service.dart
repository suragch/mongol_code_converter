import 'package:mongol_code/mongol_code.dart';
import 'package:mongol_code_converter/converter/bolorsoft/bolorsoft.dart';

import 'cms/cms_code.dart';

enum CodeType {
  cms,
  menksoft,
  unicode,
}

class ConverterService {
  final mongolCode = MongolCode.instance;
  final cmsConverter = CmsCode.instance;

  String convertToCmsCode(String text) {
    final type = _detectCodeType(text);
    switch (type) {
      case CodeType.cms:
        return text;
      case CodeType.menksoft:
        return cmsConverter.menksoftToCms(text);
      case CodeType.unicode:
        final ugeiBugFix = _findAndReplaceNnbsUgei(text);
        final bolorsoftFix = _replacedBolorsoftRefinedModel(ugeiBugFix);
        final menksoftText = mongolCode.unicodeToMenksoft(bolorsoftFix);
        return cmsConverter.menksoftToCms(menksoftText);
    }
  }

  String _findAndReplaceNnbsUgei(String unicodeText) {
    final withNnbs = ' ᠦᠭᠡᠢ';
    final withSpace = ' ᠦᠭᠡᠢ';
    return unicodeText.replaceAll(withNnbs, withSpace);
  }

  String _replacedBolorsoftRefinedModel(String text) {
    final codeUnits = text.codeUnits.toList();
    for (int i = 0; i < codeUnits.length; i++) {
      if (codeUnits[i] == Bolorsoft.KE) {
        codeUnits[i] = Unicode.QA;
      } else if (codeUnits[i] == Bolorsoft.GE) {
        codeUnits[i] = Unicode.GA;
      }
    }
    return String.fromCharCodes(codeUnits);
  }

  String convertToUnicode(String text) {
    final type = _detectCodeType(text);
    switch (type) {
      case CodeType.cms:
        final menksoft = cmsConverter.cmsToMenksoft(text);
        return mongolCode.menksoftToUnicode(menksoft);
      case CodeType.menksoft:
        return mongolCode.menksoftToUnicode(text);
      case CodeType.unicode:
        final ugeiBugFix = _findAndReplaceNnbsUgei(text);
        return _replacedBolorsoftRefinedModel(ugeiBugFix);
    }
  }

  String convertToMenksoft(String text) {
    final type = _detectCodeType(text);
    switch (type) {
      case CodeType.cms:
        return cmsConverter.cmsToMenksoft(text);
      case CodeType.menksoft:
        return text;
      case CodeType.unicode:
        final ugeiBugFix = _findAndReplaceNnbsUgei(text);
        final bolorsoftFix = _replacedBolorsoftRefinedModel(ugeiBugFix);
        return mongolCode.unicodeToMenksoft(bolorsoftFix);
    }
  }

  CodeType _detectCodeType(String text) {
    int cmsCodeCount = 0;
    int menksoftCodeCount = 0;
    int unicodeCodeCount = 0;
    for (var i = 0; i < text.length; i++) {
      final codeUnit = text.codeUnitAt(i);
      if (MongolCode.isMongolian(codeUnit)) {
        unicodeCodeCount++;
      } else if (MongolCode.isMenksoft(codeUnit)) {
        menksoftCodeCount++;
      } else {
        cmsCodeCount++;
      }
    }
    if (unicodeCodeCount >= menksoftCodeCount && unicodeCodeCount >= cmsCodeCount) {
      return CodeType.unicode;
    } else if (menksoftCodeCount >= unicodeCodeCount && menksoftCodeCount >= cmsCodeCount) {
      return CodeType.menksoft;
    } else {
      return CodeType.cms;
    }
  }
}
