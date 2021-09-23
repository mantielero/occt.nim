# 1 "/usr/include/opencascade/Image_Format.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Image_Format.hxx"
# 18 "/usr/include/opencascade/Image_Format.hxx"
enum Image_Format
{
  Image_Format_UNKNOWN = 0,
  Image_Format_Gray = 1,
  Image_Format_Alpha,
  Image_Format_RGB,
  Image_Format_BGR,
  Image_Format_RGB32,
  Image_Format_BGR32,
  Image_Format_RGBA,
  Image_Format_BGRA,
  Image_Format_GrayF,
  Image_Format_AlphaF,
  Image_Format_RGF,
  Image_Format_RGBF,
  Image_Format_BGRF,
  Image_Format_RGBAF,
  Image_Format_BGRAF,
};
enum { Image_Format_NB = Image_Format_BGRAF + 1 };
