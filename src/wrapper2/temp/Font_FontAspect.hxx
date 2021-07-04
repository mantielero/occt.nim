# 1 "/usr/include/opencascade/Font_FontAspect.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Font_FontAspect.hxx"
# 19 "/usr/include/opencascade/Font_FontAspect.hxx"
enum Font_FontAspect
{
  Font_FontAspect_UNDEFINED = -1,
  Font_FontAspect_Regular = 0,
  Font_FontAspect_Bold,
  Font_FontAspect_Italic,
  Font_FontAspect_BoldItalic,


  Font_FA_Undefined = Font_FontAspect_UNDEFINED,
  Font_FA_Regular = Font_FontAspect_Regular,
  Font_FA_Bold = Font_FontAspect_Bold,
  Font_FA_Italic = Font_FontAspect_Italic,
  Font_FA_BoldItalic = Font_FontAspect_BoldItalic
};
enum { Font_FontAspect_NB = Font_FontAspect_BoldItalic + 1 };
