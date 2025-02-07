// ignore_for_file: unreachable_switch_case

import 'package:mongol_code/mongol_code.dart';

import 'cms.dart';

class CmsCode {
  CmsCode._privateConstructor();

  static final CmsCode instance = CmsCode._privateConstructor();

  static const int SPACE = 0x0020;

  String menksoftToCms(String menksoftText) {
    final outputString = StringBuffer();

    final length = menksoftText.length;
    //var lastCharWasBp = false;
    var lastChar = 0;
    for (var i = 0; i < length; i++) {
      final codeUnit = menksoftText.codeUnitAt(i);
      switch (codeUnit) {
        case Menksoft.BIRGA:
          outputString.writeCharCode(Unicode.MONGOLIAN_BIRGA);
        case Menksoft.ELLIPSIS:
          outputString.writeCharCode(Cms.COMMA);
          outputString.writeCharCode(Cms.COMMA);
          outputString.writeCharCode(Cms.COMMA);
          outputString.writeCharCode(Cms.COMMA);
        case Menksoft.COMMA:
          outputString.writeCharCode(Cms.COMMA);
        case Menksoft.FULL_STOP:
          outputString.writeCharCode(Cms.FULL_STOP);
        case Menksoft.COLON:
          outputString.writeCharCode(Cms.COLON);
        case Menksoft.FOUR_DOTS:
          outputString.writeCharCode(Unicode.MONGOLIAN_FOUR_DOTS);
        case Menksoft.TODO_SOFT_HYPHEN:
          outputString.writeCharCode(Cms.NIRUGU);
        case Menksoft.SIBE_SYLLABLE_BOUNDARY_MARKER:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MANCHU_COMMA:
          outputString.writeCharCode(Cms.COMMA);
        case Menksoft.MANCHU_FULL_STOP:
          outputString.writeCharCode(Cms.FULL_STOP);
        case Menksoft.NIRUGU:
          outputString.writeCharCode(Cms.NIRUGU);
        case Menksoft.BIRGA_WITH_ORNAMENT:
          outputString.write('\uD805\uDE60'); // U+11660
        case Menksoft.ROTATED_BIRGA:
          outputString.write('\uD805\uDE61'); // U+11661
        case Menksoft.DOUBLE_BIRGA_WITH_ORNAMENT:
          outputString.write('\uD805\uDE62'); // U+11662
        case Menksoft.TRIPLE_BIRGA_WITH_ORNAMENT:
          outputString.write('\uD805\uDE63'); // U+11663
        case Menksoft.MIDDLE_DOT:
          outputString.writeCharCode(Cms.COMMA);
        case Menksoft.ZERO:
          outputString.writeCharCode(Cms.ZERO);
        case Menksoft.ONE:
          outputString.writeCharCode(Cms.ONE);
        case Menksoft.TWO:
          outputString.writeCharCode(Cms.TWO);
        case Menksoft.THREE:
          outputString.writeCharCode(Cms.THREE);
        case Menksoft.FOUR:
          outputString.writeCharCode(Cms.FOUR);
        case Menksoft.FIVE:
          outputString.writeCharCode(Cms.FIVE);
        case Menksoft.SIX:
          outputString.writeCharCode(Cms.SIX);
        case Menksoft.SEVEN:
          outputString.writeCharCode(Cms.SEVEN);
        case Menksoft.EIGHT:
          outputString.writeCharCode(Cms.EIGHT);
        case Menksoft.NINE:
          outputString.writeCharCode(Cms.NINE);
        case Menksoft.QUESTION_EXCLAMATION:
          outputString.writeCharCode(Cms.QUESTION);
          outputString.writeCharCode(Cms.EXCLAMATION);
        case Menksoft.EXCLAMATION_QUESTION:
          outputString.writeCharCode(Cms.EXCLAMATION);
          outputString.writeCharCode(Cms.QUESTION);
        case Menksoft.EXCLAMATION:
          outputString.writeCharCode(Cms.EXCLAMATION);
        case Menksoft.QUESTION:
          outputString.writeCharCode(Cms.QUESTION);
        case Menksoft.SEMICOLON:
          outputString.writeCharCode(Unicode.VERTICAL_SEMICOLON);
        case Menksoft.LEFT_PARENTHESIS:
          outputString.writeCharCode(Cms.LEFT_PARENTHESIS);
        case Menksoft.RIGHT_PARENTHESIS:
          outputString.writeCharCode(Cms.RIGHT_PARENTHESIS);
        case Menksoft.LEFT_ANGLE_BRACKET:
          outputString.writeCharCode(Cms.LEFT_ANGLE_BRACKET);
        case Menksoft.RIGHT_ANGLE_BRACKET:
          outputString.writeCharCode(Cms.RIGHT_ANGLE_BRACKET);
        case Menksoft.LEFT_TORTOISE_SHELL_BRACKET:
          outputString.writeCharCode(Cms.LEFT_ANGLE_BRACKET);
        case Menksoft.RIGHT_TORTOISE_SHELL_BRACKET:
          outputString.writeCharCode(Cms.RIGHT_ANGLE_BRACKET);
        case Menksoft.LEFT_DOUBLE_ANGLE_BRACKET:
          outputString.writeCharCode(Cms.LEFT_ANGLE_BRACKET);
          outputString.writeCharCode(Cms.LEFT_ANGLE_BRACKET);
        case Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET:
          outputString.writeCharCode(Cms.RIGHT_ANGLE_BRACKET);
          outputString.writeCharCode(Cms.RIGHT_ANGLE_BRACKET);
        case Menksoft.LEFT_WHITE_CORNER_BRACKET:
          outputString.writeCharCode(Unicode.VERTICAL_LEFT_WHITE_CORNER_BRACKET);
        case Menksoft.RIGHT_WHITE_CORNER_BRACKET:
          outputString.writeCharCode(Unicode.VERTICAL_RIGHT_WHITE_CORNER_BRACKET);
        case Menksoft.FULL_WIDTH_COMMA:
          outputString.writeCharCode(Cms.COMMA);
        case Menksoft.X:
          outputString.writeCharCode(0x00D7); // using the multiplication sign
        case Menksoft.REFERENCE_MARK:
          outputString.writeCharCode(Unicode.REFERENCE_MARK);
        case Menksoft.EN_DASH:
          outputString.writeCharCode(Cms.NIRUGU);
        case Menksoft.EM_DASH:
          outputString.writeCharCode(Cms.NIRUGU);
          outputString.writeCharCode(Cms.NIRUGU);
        case Menksoft.UNKNOWN_SPACE:
          outputString.writeCharCode(Cms.SPACE);
        case Menksoft.SUFFIX_SPACE:
          outputString.writeCharCode(Cms.SPACE);
        case Menksoft.ISOL_A:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.FINA_A);
        case Menksoft.INIT_A:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_A:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_A_BP:
          outputString.writeCharCode(Cms.MEDI_E_AFTER_BP);
        case Menksoft.FINA_A:
          outputString.writeCharCode(Cms.FINA_A);
        case Menksoft.FINA_A_BP:
          outputString.writeCharCode(Cms.MEDI_E_AFTER_BP);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.ISOL_A_FVS1:
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.MEDI_A_FVS1:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.FINA_A_FVS1:
          outputString.writeCharCode(Cms.FINA_A_AFTER_MVS);
        case Menksoft.FINA_A_MVS:
          outputString.writeCharCode(Cms.FINA_A_AFTER_MVS);
        case Menksoft.MEDI_A_FVS2:
          outputString.writeCharCode(Cms.INIT_E_LONG);
        case Menksoft.MEDI_A_UNKNOWN:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.ISOL_E:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.INIT_E:
          outputString.writeCharCode(Cms.INIT_E_LONG);
        case Menksoft.MEDI_E:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_E_BP:
          outputString.writeCharCode(Cms.MEDI_E_AFTER_BP);
        case Menksoft.FINA_E:
          outputString.writeCharCode(Cms.FINA_A);
        case Menksoft.FINA_E_BP:
          outputString.writeCharCode(Cms.MEDI_E_AFTER_BP);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.INIT_E_FVS1:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.FINA_E_FVS1:
          outputString.writeCharCode(Cms.FINA_A_AFTER_MVS);
        case Menksoft.FINA_E_MVS:
          outputString.writeCharCode(Cms.FINA_A_AFTER_MVS);
        case Menksoft.MEDI_E_UNKNOWN:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.ISOL_I:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.ISOL_I_SUFFIX:
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.INIT_I:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_I:
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_I_SUFFIX:
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_I_BP:
          outputString.writeCharCode(Cms.MEDI_I_AFTER_BP);
        case Menksoft.MEDI_I_DOUBLE_TOOTH:
          outputString.writeCharCode(Cms.MEDI_I_DOUBLE_TOOTH);
        case Menksoft.FINA_I:
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.FINA_I_BP:
          outputString.writeCharCode(Cms.MEDI_I_AFTER_BP);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.MEDI_I_FVS1:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.ISOL_O:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.INIT_O:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_O:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_O_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.FINA_O:
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.FINA_O_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.MEDI_O_FVS1:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.FINA_O_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.ISOL_U:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.INIT_U:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_U:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_U_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.FINA_U:
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.FINA_U_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.MEDI_U_FVS1:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.FINA_U_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.ISOL_OE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_OE_FVS1:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.INIT_OE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_OE:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_OE_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.FINA_OE:
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.FINA_OE_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.MEDI_OE_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_OE_FVS1_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.FINA_OE_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.FINA_OE_FVS1_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.FINA_OE_FVS2:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_OE_FVS2:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.ISOL_UE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.INIT_UE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_UE:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_UE_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.FINA_UE:
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.FINA_UE_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
        case Menksoft.ISOL_UE_FVS1:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.MEDI_UE_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_UE_FVS1_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.FINA_UE_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.FINA_UE_FVS1_BP:
          if (!isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_O);
          }
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.FINA_UE_FVS2:
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_UE_FVS2:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.ISOL_EE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.INIT_EE:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
        case Menksoft.MEDI_EE:
          if (isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_WA_AFTER_BP);
          } else {
            outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
          }
        case Menksoft.FINA_EE:
          outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_NA:
          outputString.writeCharCode(Cms.INIT_NA);
        case Menksoft.INIT_NA_TOOTH:
          outputString.writeCharCode(Cms.INIT_NA);
        case Menksoft.INIT_NA_STEM:
          outputString.writeCharCode(Cms.INIT_NA);
        case Menksoft.MEDI_NA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_NA_STEM:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_NA_NG:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.FINA_NA:
          outputString.writeCharCode(Cms.FINA_A);
        case Menksoft.INIT_NA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.INIT_E);
        case Menksoft.INIT_NA_FVS1_STEM:
          outputString.writeCharCode(Cms.INIT_E);
        case Menksoft.MEDI_NA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.MEDI_NA);
        case Menksoft.MEDI_NA_FVS1_STEM:
          outputString.writeCharCode(Cms.MEDI_NA);
        case Menksoft.MEDI_NA_FVS1_NG:
          outputString.writeCharCode(Cms.MEDI_NA);
        case Menksoft.MEDI_NA_FVS2:
          outputString.writeCharCode(Cms.MEDI_NA_MVS);
        case Menksoft.MEDI_NA_FVS3:
          outputString.writeCharCode(Cms.MEDI_NA);
        case Menksoft.ISOL_ANG:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.INIT_ANG_TOOTH:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.INIT_ANG_ROUND:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.INIT_ANG_STEM:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.MEDI_ANG_TOOTH:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.MEDI_ANG_ROUND:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.MEDI_ANG_STEM:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.FINA_ANG:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_I);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.ISOL_BA:
          outputString.writeCharCode(Cms.MEDI_BA);
        case Menksoft.INIT_BA:
          outputString.writeCharCode(Cms.MEDI_BA);
        case Menksoft.INIT_BA_OU:
          outputString.writeCharCode(Cms.BO);
        case Menksoft.INIT_BA_STEM:
          outputString.writeCharCode(Cms.MEDI_BA);
        case Menksoft.MEDI_BA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_BA);
        case Menksoft.MEDI_BA_OU:
          outputString.writeCharCode(Cms.BO);
        case Menksoft.MEDI_BA_STEM:
          outputString.writeCharCode(Cms.MEDI_BA);
        case Menksoft.FINA_BA:
          outputString.writeCharCode(Cms.FINA_BA);
        case Menksoft.FINA_BA_FVS1:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.ISOL_PA:
          outputString.writeCharCode(Cms.MEDI_PA);
        case Menksoft.INIT_PA:
          outputString.writeCharCode(Cms.MEDI_PA);
        case Menksoft.INIT_PA_OU:
          outputString.writeCharCode(Cms.PO);
        case Menksoft.INIT_PA_STEM:
          outputString.writeCharCode(Cms.MEDI_PA);
        case Menksoft.MEDI_PA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_PA);
        case Menksoft.MEDI_PA_OU:
          outputString.writeCharCode(Cms.PO);
        case Menksoft.MEDI_PA_STEM:
          outputString.writeCharCode(Cms.MEDI_PA);
        case Menksoft.FINA_PA:
          outputString.writeCharCode(Cms.FINA_PA);
        case Menksoft.ISOL_QA:
          outputString.writeCharCode(Cms.INIT_QA);
        case Menksoft.INIT_QA_TOOTH:
          outputString.writeCharCode(Cms.INIT_QA);
        case Menksoft.INIT_QA_STEM:
          outputString.writeCharCode(Cms.INIT_QA);
        case Menksoft.INIT_QA_FEM:
          outputString.writeCharCode(Cms.MEDI_GA_FEMININE);
        case Menksoft.INIT_QA_FEM_OU:
          outputString.writeCharCode(Cms.QO);
        case Menksoft.MEDI_QA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_QA_STEM:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_QA_FEM:
          outputString.writeCharCode(Cms.MEDI_GA_FEMININE);
        case Menksoft.MEDI_QA_FEM_CONSONANT:
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.MEDI_QA_FEM_CONSONANT_DOTTED:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.MEDI_QA_FEM_OU:
          outputString.writeCharCode(Cms.QO);
        case Menksoft.FINA_QA:
          outputString.writeCharCode(Cms.FINA_GA);
        case Menksoft.INIT_QA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.INIT_GA);
        case Menksoft.INIT_QA_FVS1_STEM:
          outputString.writeCharCode(Cms.INIT_GA);
        case Menksoft.INIT_QA_FVS1_FEM:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.INIT_QA_FVS1_FEM_OU:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.MEDI_QA_FVS1:
          outputString.writeCharCode(Cms.MEDI_GA_DOTTED);
        case Menksoft.MEDI_QA_FVS1_FEM:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.MEDI_QA_FVS1_FEM_OU:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.ISOL_QA_FVS1:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.MEDI_QA_FVS2:
          outputString.writeCharCode(Cms.MEDI_GA_FVS2);
        case Menksoft.MEDI_QA_FVS3:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.ISOL_GA:
          outputString.writeCharCode(Cms.INIT_GA);
        case Menksoft.INIT_GA_TOOTH:
          outputString.writeCharCode(Cms.INIT_GA);
        case Menksoft.INIT_GA_STEM:
          outputString.writeCharCode(Cms.INIT_GA);
        case Menksoft.INIT_GA_FEM:
          outputString.writeCharCode(Cms.MEDI_GA_FEMININE);
        case Menksoft.INIT_GA_FEM_OU:
          outputString.writeCharCode(Cms.QO);
        case Menksoft.MEDI_GA:
          outputString.writeCharCode(Cms.MEDI_E_STEM);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.MEDI_GA_FEM:
          outputString.writeCharCode(Cms.MEDI_GA_FEMININE);
        case Menksoft.MEDI_GA_FEM_OU:
          outputString.writeCharCode(Cms.QO);
        case Menksoft.FINA_GA:
          outputString.writeCharCode(Cms.FINA_GA);
        case Menksoft.INIT_GA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.INIT_QA);
        case Menksoft.INIT_GA_FVS1_STEM:
          outputString.writeCharCode(Cms.INIT_QA);
        case Menksoft.MEDI_GA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.MEDI_GA_DOTTED);
        case Menksoft.MEDI_GA_FVS1_STEM:
          outputString.writeCharCode(Cms.MEDI_GA_DOTTED);
        case Menksoft.FINA_GA_FVS1:
          outputString.writeCharCode(Cms.FINA_GA);
        case Menksoft.FINA_GA_FVS2:
          outputString.writeCharCode(Cms.MEDI_I);
          outputString.writeCharCode(Cms.FINA_LONG_LEFT_STROKE);
        case Menksoft.MEDI_GA_FVS2:
          outputString.writeCharCode(Cms.MEDI_GA_FVS2);
        case Menksoft.MEDI_GA_FVS3_TOOTH:
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        case Menksoft.MEDI_GA_FVS3_STEM:
          outputString.writeCharCode(Cms.MEDI_GA_NG);
        // TODO handle MA LA combinations
        case Menksoft.ISOL_MA:
          outputString.writeCharCode(Cms.INIT_MA);
        case Menksoft.INIT_MA_TOOTH:
          outputString.writeCharCode(Cms.INIT_MA);
        case Menksoft.INIT_MA_STEM_LONG:
          outputString.writeCharCode(Cms.INIT_MA);
        case Menksoft.MEDI_MA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_MA_STEM_LONG);
        case Menksoft.MEDI_MA_STEM_LONG:
          outputString.writeCharCode(Cms.MEDI_MA_STEM_LONG);
        case Menksoft.MEDI_MA_BP:
          outputString.writeCharCode(Cms.MEDI_MA_STEM_LONG);
        case Menksoft.FINA_MA:
          outputString.writeCharCode(Cms.FINA_MA);
        // TODO handle MA LA combinations
        case Menksoft.ISOL_LA:
          outputString.writeCharCode(Cms.INIT_LA);
        case Menksoft.INIT_LA_TOOTH:
          outputString.writeCharCode(Cms.INIT_LA);
        case Menksoft.INIT_LA_STEM_LONG:
          outputString.writeCharCode(Cms.INIT_LA);
        case Menksoft.MEDI_LA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_LA);
        case Menksoft.MEDI_LA_STEM_LONG:
          outputString.writeCharCode(Cms.MEDI_LA);
        case Menksoft.MEDI_LA_BP:
          outputString.writeCharCode(Cms.MEDI_LA_AFTER_BP);
        case Menksoft.FINA_LA:
          outputString.writeCharCode(Cms.FINA_LA);
        case Menksoft.ISOL_SA:
          outputString.writeCharCode(Cms.INIT_SA);
        case Menksoft.INIT_SA_TOOTH:
          outputString.writeCharCode(Cms.INIT_SA);
        case Menksoft.INIT_SA_STEM:
          outputString.writeCharCode(Cms.INIT_SA);
        case Menksoft.MEDI_SA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_SA);
        case Menksoft.MEDI_SA_STEM:
          outputString.writeCharCode(Cms.MEDI_SA);
        case Menksoft.FINA_SA:
          outputString.writeCharCode(Cms.FINA_SA);
        case Menksoft.FINA_SA_FVS1:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.FINA_SA_FVS2:
          outputString.writeCharCode(Cms.UNSUPPORTED); // No glyph for this.
        case Menksoft.ISOL_SHA:
          outputString.writeCharCode(Cms.INIT_SHA);
        case Menksoft.INIT_SHA_TOOTH:
          outputString.writeCharCode(Cms.INIT_SHA);
        case Menksoft.INIT_SHA_STEM:
          outputString.writeCharCode(Cms.INIT_SHA);
        case Menksoft.MEDI_SHA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_SHA);
        case Menksoft.MEDI_SHA_STEM:
          outputString.writeCharCode(Cms.MEDI_SHA);
        case Menksoft.FINA_SHA:
          outputString.writeCharCode(Cms.FINA_SHA);
        case Menksoft.ISOL_TA:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.INIT_TA_TOOTH:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.INIT_TA_STEM:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.MEDI_TA:
          outputString.writeCharCode(Cms.MEDI_DA);
        case Menksoft.FINA_TA:
          outputString.writeCharCode(Cms.INIT_TA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.MEDI_TA_FVS1_TOOTH:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.MEDI_TA_FVS1_STEM:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.ISOL_DA:
          outputString.writeCharCode(Cms.MEDI_DA);
        case Menksoft.INIT_DA_TOOTH:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.INIT_DA_STEM:
          outputString.writeCharCode(Cms.INIT_TA);
        case Menksoft.MEDI_DA:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_E_STEM);
        case Menksoft.FINA_DA:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.FINA_A);
        case Menksoft.INIT_DA_FVS1:
          outputString.writeCharCode(Cms.MEDI_DA);
        case Menksoft.MEDI_DA_FVS1:
          outputString.writeCharCode(Cms.MEDI_DA);
        case Menksoft.FINA_DA_FVS1:
          outputString.writeCharCode(Cms.MEDI_DA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_CHA:
          outputString.writeCharCode(Cms.INIT_CHA);
        case Menksoft.INIT_CHA:
          outputString.writeCharCode(Cms.INIT_CHA);
        case Menksoft.MEDI_CHA:
          outputString.writeCharCode(Cms.MEDI_CHA);
        case Menksoft.FINA_CHA:
          outputString.writeCharCode(Cms.MEDI_CHA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_JA:
          outputString.writeCharCode(Cms.INIT_JA);
        case Menksoft.INIT_JA_TOOTH:
          outputString.writeCharCode(Cms.INIT_JA);
        case Menksoft.INIT_JA_STEM:
          outputString.writeCharCode(Cms.INIT_JA);
        case Menksoft.MEDI_JA:
          outputString.writeCharCode(Cms.MEDI_JA);
        case Menksoft.FINA_JA:
          outputString.writeCharCode(Cms.MEDI_JA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.MEDI_JA_FVS1:
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.ISOL_YA:
          outputString.writeCharCode(Cms.INIT_YA);
        case Menksoft.INIT_YA:
          outputString.writeCharCode(Cms.INIT_YA);
        case Menksoft.MEDI_YA:
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.FINA_YA:
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.INIT_YA_FVS1:
          outputString.writeCharCode(Cms.MEDI_I);
        case Menksoft.MEDI_YA_FVS1:
          outputString.writeCharCode(Cms.MEDI_YA);
        case Menksoft.MEDI_YA_FVS2:
          outputString.writeCharCode(Cms.FINA_I);
        case Menksoft.ISOL_RA:
          outputString.writeCharCode(Cms.INIT_RA);
        case Menksoft.INIT_RA_TOOTH:
          outputString.writeCharCode(Cms.INIT_RA);
        case Menksoft.INIT_RA_STEM:
          outputString.writeCharCode(Cms.INIT_RA);
        case Menksoft.MEDI_RA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_RA);
        case Menksoft.MEDI_RA_STEM:
          outputString.writeCharCode(Cms.MEDI_RA);
        case Menksoft.FINA_RA:
          outputString.writeCharCode(Cms.FINA_RA);
        case Menksoft.ISOL_WA:
          outputString.writeCharCode(Cms.INIT_WA);
        case Menksoft.INIT_WA:
          outputString.writeCharCode(Cms.INIT_WA);
        case Menksoft.MEDI_WA:
          if (isMenksoftBp(lastChar)) {
            outputString.writeCharCode(Cms.MEDI_WA_AFTER_BP);
          } else {
            outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
          }
        case Menksoft.FINA_WA:
          outputString.writeCharCode(Cms.MEDI_WA_AFTER_STEM);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.FINA_WA_FVS1:
          outputString.writeCharCode(Cms.FINA_O);
        case Menksoft.ISOL_FA:
          outputString.writeCharCode(Cms.MEDI_FA);
        case Menksoft.INIT_FA:
          outputString.writeCharCode(Cms.MEDI_FA);
        case Menksoft.INIT_FA_OU:
          outputString.writeCharCode(Cms.FO);
        case Menksoft.INIT_FA_STEM:
          outputString.writeCharCode(Cms.MEDI_FA);
        case Menksoft.MEDI_FA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_FA);
        case Menksoft.MEDI_FA_OU:
          outputString.writeCharCode(Cms.FO);
        case Menksoft.MEDI_FA_STEM:
          outputString.writeCharCode(Cms.MEDI_FA);
        case Menksoft.FINA_FA:
          outputString.writeCharCode(Cms.FINA_FA);
        case Menksoft.ISOL_KA:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.INIT_KA:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.INIT_KA_OU:
          outputString.writeCharCode(Cms.KO);
        case Menksoft.MEDI_KA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.MEDI_KA_OU:
          outputString.writeCharCode(Cms.KO);
        case Menksoft.MEDI_KA_STEM:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.FINA_KA:
          outputString.writeCharCode(Cms.FINA_KA);
        case Menksoft.ISOL_KHA:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.INIT_KHA:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.INIT_KHA_OU:
          outputString.writeCharCode(Cms.KO);
        case Menksoft.MEDI_KHA_TOOTH:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.MEDI_KHA_OU:
          outputString.writeCharCode(Cms.KO);
        case Menksoft.MEDI_KHA_STEM:
          outputString.writeCharCode(Cms.MEDI_KA);
        case Menksoft.FINA_KHA:
          outputString.writeCharCode(Cms.FINA_KA);
        case Menksoft.ISOL_TSA:
          outputString.writeCharCode(Cms.INIT_TSA);
        case Menksoft.INIT_TSA:
          outputString.writeCharCode(Cms.INIT_TSA);
        case Menksoft.MEDI_TSA:
          outputString.writeCharCode(Cms.MEDI_TSA);
        case Menksoft.FINA_TSA:
          outputString.writeCharCode(Cms.MEDI_TSA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_ZA:
          outputString.writeCharCode(Cms.INIT_ZA);
        case Menksoft.INIT_ZA:
          outputString.writeCharCode(Cms.INIT_ZA);
        case Menksoft.MEDI_ZA:
          outputString.writeCharCode(Cms.MEDI_ZA);
        case Menksoft.FINA_ZA:
          outputString.writeCharCode(Cms.MEDI_ZA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_HAA:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.INIT_HAA:
          outputString.writeCharCode(Cms.INIT_E);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.MEDI_HAA:
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.FINA_HAA:
          outputString.writeCharCode(Cms.HAA);
          outputString.writeCharCode(Cms.FINA_SHORT_LEFT_STROKE);
        case Menksoft.ISOL_ZRA:
          outputString.writeCharCode(Cms.UNSUPPORTED);
        case Menksoft.INIT_ZRA:
          outputString.writeCharCode(Cms.UNSUPPORTED);
        case Menksoft.MEDI_ZRA:
          outputString.writeCharCode(Cms.UNSUPPORTED);
        case Menksoft.FINA_ZRA:
          outputString.writeCharCode(Cms.UNSUPPORTED);
        case Menksoft.ISOL_LHA:
          outputString.writeCharCode(Cms.INIT_LA);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.INIT_LHA:
          outputString.writeCharCode(Cms.INIT_LA);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.MEDI_LHA:
          outputString.writeCharCode(Cms.MEDI_LA);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.MEDI_LHA_BP:
          outputString.writeCharCode(Cms.MEDI_LA_AFTER_BP);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.FINA_LHA:
          outputString.writeCharCode(Cms.MEDI_LA);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.FINA_LHA_BP:
          outputString.writeCharCode(Cms.MEDI_LA_AFTER_BP);
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.ISOL_ZHI:
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.INIT_ZHI:
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.MEDI_ZHI:
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.FINA_ZHI:
          outputString.writeCharCode(Cms.HAA);
        case Menksoft.ISOL_CHI:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.INIT_CHI:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.MEDI_CHI:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_O);
        case Menksoft.FINA_CHI:
          outputString.writeCharCode(Cms.MEDI_O);
          outputString.writeCharCode(Cms.MEDI_O);
        default:
          outputString.writeCharCode(codeUnit);
      }
      lastChar = codeUnit;
    }
    return outputString.toString();
  }

  bool isMenksoftO(int lastChar) {
    return lastChar >= Menksoft.O_START && lastChar < Menksoft.EE_START;
  }

  bool isMenksoftBp(int codeUnit) {
    return (codeUnit >= Menksoft.BA_START && codeUnit < Menksoft.MA_START) ||
        (codeUnit >= Menksoft.FA_START && codeUnit < Menksoft.KA_START);
  }
}
