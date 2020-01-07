import 'package:mongol_code/mongol_code.dart';

import 'cms_code.dart';

abstract class ConverterService {
  Future<String> convertUnicodeToCmsCode(String unicodeText);
}

class ConverterServiceImpl implements ConverterService {

  @override
  Future<String> convertUnicodeToCmsCode(String unicodeText) async {
    if (unicodeText == null) {
      return '';
    }

    final unicodeConverter = MongolCode.instance;
    final menksoftText = unicodeConverter.unicodeToMenksoft(unicodeText);

    final cmsConverter = CmsCode.instance;
    final cmsText = cmsConverter.menksoftToCms(menksoftText);
    return cmsText;
  }

}