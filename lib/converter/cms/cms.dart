class Cms {
  static const int UNSUPPORTED = 0x2588; // black box

  static const int SPACE = 0x0020; // space
  static const int FINA_KA = 0x0021; // !
  static const int RIGHT_PARENTHESIS = 0x0022; // "
  static const int FINA_PA = 0x0023; // #
  static const int FINA_BA = 0x0024; // $
  static const int MEDI_NA_MVS = 0x0025; // %
  static const int FINA_LA = 0x0026; // &
  static const int MEDI_MA_LA = 0x0027; // '
  static const int FINA_GA = 0x0028; // (
  static const int MEDI_GA_FVS2 = 0x0029; // )
  static const int FINA_RA = 0x002A; // *
  static const int FINA_SHA = 0x002B; // +
  static const int COMMA = 0x002C; // ,
  static const int NIRUGU = 0x002D; // -
  static const int FULL_STOP = 0x002E; // .
  static const int EXCLAMATION = 0x002F; // /

  static const int ZERO = 0x0030; // 0
  static const int ONE = 0x0031; // 1
  static const int TWO = 0x0032; // 2
  static const int THREE = 0x0033; // 3
  static const int FOUR = 0x0034; // 4
  static const int FIVE = 0x0035; // 5
  static const int SIX = 0x0036; // 6
  static const int SEVEN = 0x0037; // 7
  static const int EIGHT = 0x0038; // 8
  static const int NINE = 0x0039; // 9
  static const int LEFT_PARENTHESIS = 0x003A; // :
  static const int MEDI_LA_AFTER_BP = 0x003B; // ;
  static const int LEFT_ANGLE_BRACKET = 0x003C; // <
  static const int COLON = 0x003D; // =
  static const int RIGHT_ANGLE_BRACKET = 0x003E; // >
  static const int QUESTION = 0x003F; // ?

  static const int FINA_FA = 0x0040; // @
  static const int FINA_SHORT_LEFT_STROKE = 0x0041; // A
  static const int BO = 0x0042; // B
  static const int INIT_CHA = 0x0043; // C
  static const int INIT_TA = 0x0044; // D
  static const int MEDI_E_AFTER_BP = 0x0045; // E
  static const int INIT_E_LONG = 0x0046; // F     for words like ENDE?
  static const int INIT_GA = 0x0047; // G
  static const int INIT_QA = 0x0048; // H
  static const int FINA_I = 0x0049; // I
  static const int INIT_JA = 0x004A; // J
  static const int QO = 0x004B; // K
  static const int INIT_LA = 0x004C; // L
  static const int INIT_MA = 0x004D; // M
  static const int INIT_NA = 0x004E; // N
  static const int FINA_O = 0x004F; // O

  static const int PO = 0x0050; // P
  static const int FO = 0x0051; // Q
  static const int INIT_RA = 0x0052; // R
  static const int INIT_SA = 0x0053; // S
  static const int FINA_A_AFTER_MVS = 0x0054; // T
  static const int MEDI_I_DOUBLE_TOOTH = 0x0055; // U
  static const int MEDI_MA_UNKNOWN1 = 0x0056; // V
  static const int INIT_WA = 0x0057; // W
  static const int MEDI_LA_AFTER_LA = 0x0058; // X
  static const int INIT_YA = 0x0059; // Y
  static const int INIT_SHA = 0x005A; // Z
  static const int MEDI_ZA = 0x005B; // [
  static const int MEDI_KA = 0x005C; // \
  static const int MEDI_TSA = 0x005D; // ]
  static const int FINA_MA = 0x005E; // ^
  static const int FINA_SA = 0x005F; // _

  static const int MEDI_WA_AFTER_BP = 0x0060; // `
  static const int FINA_A = 0x0061; // a
  static const int MEDI_BA = 0x0062; // b
  static const int MEDI_CHA = 0x0063; // c
  static const int MEDI_DA = 0x0064; // d
  static const int MEDI_E_STEM = 0x0065; // e
  static const int INIT_E = 0x0066; // f   used for init a, o, etc.
  static const int MEDI_GA_DOTTED = 0x0067; // g
  static const int MEDI_GA_NG = 0x0068; // h    g of ng, before consonant
  static const int MEDI_I = 0x0069; // i
  static const int MEDI_JA = 0x006A; // j
  static const int MEDI_GA_FEMININE = 0x006B; // k
  static const int MEDI_LA = 0x006C; // l
  static const int MEDI_MA_STEM_LONG = 0x006D; // m
  static const int MEDI_NA = 0x006E; // n
  static const int MEDI_O = 0x006F; // o

  static const int MEDI_PA = 0x0070; // p
  static const int MEDI_FA = 0x0071; // q
  static const int MEDI_RA = 0x0072; // r
  static const int MEDI_SA = 0x0073; // s
  static const int FINA_LONG_LEFT_STROKE = 0x0074; // t
  static const int MEDI_I_AFTER_BP = 0x0075; // u
  static const int MEDI_MA_UNKNOWN2 = 0x0076; // v
  static const int MEDI_WA_AFTER_STEM = 0x0077; // w
  static const int MEDI_LA_BEFORE_LA = 0x0078; // x
  static const int MEDI_YA = 0x0079; // y
  static const int MEDI_SHA = 0x007A; // z
  static const int INIT_ZA = 0x007B; // {
  static const int KO = 0x007C; // |
  static const int INIT_TSA = 0x007D; // }
  static const int HAA = 0x007E; // ~

  static bool isLetter(int? code) {
    if (code == null) return false;
    if (code >= FINA_KA && code <= NIRUGU) {
      return code != RIGHT_PARENTHESIS && code != COMMA;
    }
    if (code == MEDI_LA_AFTER_BP) {
      return true;
    }
    return code >= FINA_FA && code <= HAA;
  }

  static bool isVowel(int? nextChar) {
    if (nextChar == null) return false;
    return nextChar == MEDI_E_AFTER_BP ||
        nextChar == INIT_E_LONG ||
        nextChar == FINA_I ||
        nextChar == FINA_O ||
        nextChar == FINA_A_AFTER_MVS ||
        nextChar == MEDI_I_DOUBLE_TOOTH ||
        nextChar == FINA_A ||
        nextChar == MEDI_E_STEM ||
        nextChar == INIT_E ||
        nextChar == MEDI_I ||
        nextChar == MEDI_O ||
        nextChar == MEDI_I_AFTER_BP ||
        nextChar == MEDI_I_AFTER_BP;
  }
}
