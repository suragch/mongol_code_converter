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

  String cmsToMenksoft(String cms) {
    final outputString = StringBuffer();

    int lastChar = 0;
    final codeUnits = cms.codeUnits;
    final length = codeUnits.length;
    for (int i = 0; i < length; i++) {
      final codeUnit = codeUnits[i];
      final nextChar = (i < length - 1) ? codeUnits[i + 1] : null;
      switch (codeUnit) {
        case Cms.FINA_KA:
          outputString.writeCharCode(Menksoft.FINA_KA);
        case Cms.RIGHT_PARENTHESIS:
          outputString.writeCharCode(Menksoft.RIGHT_PARENTHESIS);
        case Cms.FINA_PA:
          outputString.writeCharCode(Menksoft.FINA_PA);
        case Cms.FINA_BA:
          outputString.writeCharCode(Menksoft.FINA_BA);
        case Cms.MEDI_NA_MVS:
          outputString.writeCharCode(Menksoft.MEDI_NA_FVS2);
        case Cms.FINA_LA:
          outputString.writeCharCode(Menksoft.FINA_LA);
        case Cms.MEDI_MA_LA:
          outputString.writeCharCode(Menksoft.MEDI_MA_STEM_LONG);
          outputString.writeCharCode(Menksoft.MEDI_LA_STEM_LONG);
        case Cms.FINA_GA:
          outputString.writeCharCode(Menksoft.FINA_GA);
        case Cms.MEDI_GA_FVS2:
          outputString.writeCharCode(Menksoft.MEDI_GA_FVS2);
        case Cms.FINA_RA:
          outputString.writeCharCode(Menksoft.FINA_RA);
        case Cms.FINA_SHA:
          outputString.writeCharCode(Menksoft.FINA_SHA);
        case Cms.COMMA:
          outputString.writeCharCode(Menksoft.COMMA);
        case Cms.NIRUGU:
          outputString.writeCharCode(Menksoft.NIRUGU);
        case Cms.FULL_STOP:
          outputString.writeCharCode(Menksoft.FULL_STOP);
        case Cms.EXCLAMATION:
          if (nextChar == Cms.QUESTION) {
            outputString.writeCharCode(Menksoft.EXCLAMATION_QUESTION);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.QUESTION);
          }
        case Cms.ZERO:
          outputString.writeCharCode(Menksoft.ZERO);
        case Cms.ONE:
          outputString.writeCharCode(Menksoft.ONE);
        case Cms.TWO:
          outputString.writeCharCode(Menksoft.TWO);
        case Cms.THREE:
          outputString.writeCharCode(Menksoft.THREE);
        case Cms.FOUR:
          outputString.writeCharCode(Menksoft.FOUR);
        case Cms.FIVE:
          outputString.writeCharCode(Menksoft.FIVE);
        case Cms.SIX:
          outputString.writeCharCode(Menksoft.SIX);
        case Cms.SEVEN:
          outputString.writeCharCode(Menksoft.SEVEN);
        case Cms.EIGHT:
          outputString.writeCharCode(Menksoft.EIGHT);
        case Cms.NINE:
          outputString.writeCharCode(Menksoft.NINE);
        case Cms.LEFT_PARENTHESIS:
          outputString.writeCharCode(Menksoft.LEFT_PARENTHESIS);
        case Cms.MEDI_LA_AFTER_BP:
          if (nextChar == Cms.HAA) {
            outputString.writeCharCode(Menksoft.MEDI_LHA_BP);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_LA_BP);
          }
        case Cms.LEFT_ANGLE_BRACKET:
          if (nextChar == Cms.LEFT_ANGLE_BRACKET) {
            outputString.writeCharCode(Menksoft.LEFT_DOUBLE_ANGLE_BRACKET);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.LEFT_ANGLE_BRACKET);
          }
        case Cms.COLON:
          outputString.writeCharCode(Menksoft.COLON);
        case Cms.RIGHT_ANGLE_BRACKET:
          if (nextChar == Cms.RIGHT_ANGLE_BRACKET) {
            outputString.writeCharCode(Menksoft.RIGHT_DOUBLE_ANGLE_BRACKET);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.RIGHT_ANGLE_BRACKET);
          }
        case Cms.QUESTION:
          if (nextChar == Cms.EXCLAMATION) {
            outputString.writeCharCode(Menksoft.QUESTION_EXCLAMATION);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.QUESTION);
          }
        case Cms.FINA_FA:
          outputString.writeCharCode(Menksoft.FINA_FA);
        case Cms.FINA_SHORT_LEFT_STROKE:
          // This should always be caught by previous cases
          outputString.writeCharCode(Cms.UNSUPPORTED);
        case Cms.BO:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_BA_OU);
          } else {
            outputString.writeCharCode(Menksoft.INIT_BA_OU);
          }
        case Cms.INIT_CHA:
          outputString.writeCharCode(Menksoft.INIT_CHA);
        case Cms.INIT_TA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_TA);
            i++;
          } else if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_TA_FVS1_STEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_TA_STEM);
          }
        case Cms.MEDI_E_AFTER_BP:
          // This is ignoring the Menksoft.FINA_E_BP and Menksoft.MEDI_E_BP
          // gender variants. Could do post-processing to fix vowel harmony.
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_A_BP);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_A_BP);
          }
        case Cms.INIT_E_LONG:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_A_FVS2);
          } else {
            outputString.writeCharCode(Menksoft.INIT_E);
          }
        case Cms.INIT_GA:
          outputString.writeCharCode(Menksoft.INIT_GA_STEM);
        case Cms.INIT_QA:
          outputString.writeCharCode(Menksoft.INIT_QA_STEM);
        case Cms.FINA_I:
          if (Cms.isLetter(nextChar)) {
            outputString.writeCharCode(Menksoft.MEDI_YA_FVS2);
          } else {
            outputString.writeCharCode(Menksoft.FINA_I);
          }
        case Cms.INIT_JA:
          outputString.writeCharCode(Menksoft.INIT_JA_STEM);
        case Cms.QO:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_QA_FEM_OU);
          } else {
            outputString.writeCharCode(Menksoft.INIT_QA_FEM_OU);
          }
        case Cms.INIT_LA:
          if (nextChar == Cms.HAA) {
            outputString.writeCharCode(Menksoft.INIT_LHA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.INIT_LA_STEM_LONG);
          }
        case Cms.INIT_MA:
          outputString.writeCharCode(Menksoft.INIT_MA_STEM_LONG);
        case Cms.INIT_NA:
          outputString.writeCharCode(Menksoft.INIT_NA_STEM);
        case Cms.FINA_O:
          // This is loosing vowel harmony information.
          outputString.writeCharCode(Menksoft.FINA_U);
        case Cms.PO:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_PA_OU);
          } else {
            outputString.writeCharCode(Menksoft.INIT_PA_OU);
          }
        case Cms.FO:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_FA_OU);
          } else {
            outputString.writeCharCode(Menksoft.INIT_FA_OU);
          }
        case Cms.INIT_RA:
          outputString.writeCharCode(Menksoft.INIT_RA_STEM);
        case Cms.INIT_SA:
          outputString.writeCharCode(Menksoft.INIT_SA_STEM);
        case Cms.FINA_A_AFTER_MVS:
          // This is loosing vowel harmony information.
          outputString.writeCharCode(Menksoft.FINA_A_MVS);
        case Cms.MEDI_I_DOUBLE_TOOTH:
          outputString.writeCharCode(Menksoft.MEDI_I_DOUBLE_TOOTH);
        case Cms.MEDI_MA_UNKNOWN1:
          outputString.writeCharCode(Menksoft.MEDI_MA_STEM_LONG);
        case Cms.INIT_WA:
          outputString.writeCharCode(Menksoft.INIT_WA);
        case Cms.MEDI_LA_AFTER_LA:
          outputString.writeCharCode(Menksoft.MEDI_LA_STEM_LONG);
        case Cms.INIT_YA:
          outputString.writeCharCode(Menksoft.INIT_YA);
        case Cms.INIT_SHA:
          outputString.writeCharCode(Menksoft.INIT_SHA_STEM);
        case Cms.MEDI_ZA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_ZA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_ZA);
          }
        case Cms.MEDI_KA:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_KA_STEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_KA);
          }
        case Cms.MEDI_TSA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_TSA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_TSA);
          }
        case Cms.FINA_MA:
          outputString.writeCharCode(Menksoft.FINA_MA);
        case Cms.FINA_SA:
          outputString.writeCharCode(Menksoft.FINA_SA);
        case Cms.MEDI_WA_AFTER_BP:
          if (Cms.isVowel(nextChar)) {
            outputString.writeCharCode(Menksoft.MEDI_WA);
          } else {
            outputString.writeCharCode(Menksoft.MEDI_EE);
          }
        case Cms.FINA_A:
          if (Cms.isVowel(lastChar)) {
            outputString.writeCharCode(Menksoft.FINA_NA);
          } else {
            // This is loosing vowel harmony information.
            outputString.writeCharCode(Menksoft.FINA_A);
          }
        case Cms.MEDI_BA:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_BA_STEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_BA);
          }
        case Cms.MEDI_CHA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_CHA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_CHA);
          }
        case Cms.MEDI_DA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_DA_FVS1);
            i++;
          } else if (!Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.INIT_DA_FVS1);
          } else {
            outputString.writeCharCode(Menksoft.MEDI_TA);
          }
        case Cms.MEDI_E_STEM:
          if (nextChar == Cms.MEDI_I) {
            final nextNextChar = (i < codeUnits.length - 2) ? codeUnits[i + 2] : null;
            if (nextNextChar == Cms.FINA_LONG_LEFT_STROKE) {
              outputString.writeCharCode(Menksoft.FINA_ANG);
              i += 2;
            } else {
              outputString.writeCharCode(Menksoft.MEDI_I_FVS1);
              i++;
            }
          } else if (nextChar == Cms.MEDI_O) {
            final nextNextChar = (i < codeUnits.length - 2) ? codeUnits[i + 2] : null;
            if (nextNextChar == Cms.MEDI_I) {
              outputString.writeCharCode(Menksoft.MEDI_UE_FVS2);
              i += 2;
            } else {
              outputString.writeCharCode(Menksoft.MEDI_U_FVS1);
              i++;
            }
          } else if (nextChar == Cms.MEDI_GA_NG) {
            outputString.writeCharCode(Menksoft.MEDI_ANG_STEM);
            i++;
          } else if (nextChar == Cms.MEDI_E_STEM) {
            final nextNextChar = (i < codeUnits.length - 2) ? codeUnits[i + 2] : null;
            if (Cms.isVowel(lastChar)) {
              if (Cms.isVowel(nextNextChar)) {
                outputString.writeCharCode(Menksoft.MEDI_QA_STEM);
                i++;
              } else {
                outputString.writeCharCode(Menksoft.MEDI_GA);
                i++;
              }
            } else {
              // last char is consonant
              if (Cms.isVowel(nextNextChar)) {
                outputString.writeCharCode(Menksoft.MEDI_QA_STEM);
                i++;
              } else {
                outputString.writeCharCode(Menksoft.MEDI_NA_STEM);
                i++;
              }
            }
          } else {
            if (Cms.isVowel(lastChar)) {
              outputString.writeCharCode(Menksoft.MEDI_NA_STEM);
            } else {
              outputString.writeCharCode(Menksoft.MEDI_A);
            }
          }
        case Cms.INIT_E:
          if (nextChar == Cms.FINA_A) {
            outputString.writeCharCode(Menksoft.ISOL_A);
            i++;
          } else if (nextChar == Cms.MEDI_E_STEM) {
            outputString.writeCharCode(Menksoft.INIT_A);
            i++;
          } else if (nextChar == Cms.FINA_LONG_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.ISOL_E);
            i++;
          } else if (nextChar == Cms.FINA_I) {
            outputString.writeCharCode(Menksoft.ISOL_I);
            i++;
          } else if (nextChar == Cms.MEDI_I) {
            outputString.writeCharCode(Menksoft.INIT_I);
            i++;
          } else if (nextChar == Cms.MEDI_O) {
            final nextNextChar = (i < codeUnits.length - 2) ? codeUnits[i + 2] : null;
            if (nextNextChar == Cms.FINA_SHORT_LEFT_STROKE) {
              outputString.writeCharCode(Menksoft.ISOL_OE);
              i += 2;
            } else if (nextNextChar == Cms.MEDI_I) {
              outputString.writeCharCode(Menksoft.INIT_UE);
              i += 2;
            } else {
              outputString.writeCharCode(Menksoft.INIT_U);
              i++;
            }
          } else if (nextChar == Cms.FINA_O) {
            outputString.writeCharCode(Menksoft.ISOL_UE_FVS1);
            i++;
          } else if (nextChar == Cms.MEDI_WA_AFTER_STEM) {
            final nextNextChar = (i < codeUnits.length - 2) ? codeUnits[i + 2] : null;
            if (nextNextChar == Cms.FINA_SHORT_LEFT_STROKE) {
              outputString.writeCharCode(Menksoft.ISOL_EE);
              i += 2;
            } else {
              outputString.writeCharCode(Menksoft.INIT_EE);
              i++;
            }
          } else if (nextChar == Cms.HAA) {
            outputString.writeCharCode(Menksoft.INIT_HAA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.INIT_E);
          }
        case Cms.MEDI_GA_DOTTED:
          outputString.writeCharCode(Menksoft.MEDI_GA_FVS1_STEM);
        case Cms.MEDI_GA_NG:
          outputString.writeCharCode(Menksoft.MEDI_GA_FVS3_STEM);
        case Cms.MEDI_I:
          if (nextChar == Cms.FINA_LONG_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_GA_FVS2);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_I);
          }
        case Cms.MEDI_JA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_JA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_JA);
          }
        case Cms.MEDI_GA_FEMININE:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_GA_FEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_GA_FEM);
          }
        case Cms.MEDI_LA:
          if (nextChar == Cms.HAA) {
            outputString.writeCharCode(Menksoft.MEDI_LHA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_LA_STEM_LONG);
          }
        case Cms.MEDI_MA_STEM_LONG:
          outputString.writeCharCode(Menksoft.MEDI_MA_STEM_LONG);
        case Cms.MEDI_NA:
          outputString.writeCharCode(Menksoft.MEDI_NA_STEM);
        case Cms.MEDI_O:
          if (nextChar == Cms.MEDI_I) {
            outputString.writeCharCode(Menksoft.MEDI_UE_FVS1);
            i++;
          } else if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_UE_FVS1);
            i++;
          } else if (nextChar == Cms.FINA_LONG_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_BA_FVS1);
            i++;
          } else if (nextChar == Cms.MEDI_E_STEM) {
            outputString.writeCharCode(Menksoft.MEDI_DA);
            i++;
          } else if (nextChar == Cms.FINA_A) {
            outputString.writeCharCode(Menksoft.FINA_DA);
            i++;
          } else if (Cms.isLetter(nextChar)) {
            outputString.writeCharCode(Menksoft.MEDI_U);
          } else {
            outputString.writeCharCode(Menksoft.FINA_U_FVS1);
          }
        case Cms.MEDI_PA:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_PA_STEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_PA_STEM);
          }
        case Cms.MEDI_FA:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_FA_STEM);
          } else {
            outputString.writeCharCode(Menksoft.INIT_FA_STEM);
          }
        case Cms.MEDI_RA:
          outputString.writeCharCode(Menksoft.MEDI_RA_STEM);
        case Cms.MEDI_SA:
          outputString.writeCharCode(Menksoft.MEDI_SA_STEM);
        case Cms.FINA_LONG_LEFT_STROKE:
          outputString.writeCharCode(Menksoft.ISOL_A_FVS1);
        case Cms.MEDI_I_AFTER_BP:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_I_BP);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_I_BP);
          }
        case Cms.MEDI_MA_UNKNOWN2:
          outputString.writeCharCode(Menksoft.MEDI_MA_STEM_LONG);
        case Cms.MEDI_WA_AFTER_STEM:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_EE);
            i++;
          } else if (Cms.isVowel(nextChar)) {
            outputString.writeCharCode(Menksoft.MEDI_WA);
          } else {
            outputString.writeCharCode(Menksoft.MEDI_EE);
          }
        case Cms.MEDI_LA_BEFORE_LA:
          outputString.writeCharCode(Menksoft.MEDI_LA_STEM_LONG);
        case Cms.MEDI_YA:
          outputString.writeCharCode(Menksoft.MEDI_YA_FVS1);
        case Cms.MEDI_SHA:
          outputString.writeCharCode(Menksoft.MEDI_SHA_STEM);
        case Cms.INIT_ZA:
          outputString.writeCharCode(Menksoft.INIT_ZA);
        case Cms.KO:
          if (Cms.isLetter(lastChar)) {
            outputString.writeCharCode(Menksoft.MEDI_KA_OU);
          } else {
            outputString.writeCharCode(Menksoft.INIT_KA_OU);
          }
        case Cms.INIT_TSA:
          outputString.writeCharCode(Menksoft.INIT_TSA);
        case Cms.HAA:
          if (nextChar == Cms.FINA_SHORT_LEFT_STROKE) {
            outputString.writeCharCode(Menksoft.FINA_HAA);
            i++;
          } else {
            outputString.writeCharCode(Menksoft.MEDI_HAA);
          }
        default:
          outputString.writeCharCode(codeUnit);
      }
      lastChar = codeUnit;
    }
    return outputString.toString();
  }
}
