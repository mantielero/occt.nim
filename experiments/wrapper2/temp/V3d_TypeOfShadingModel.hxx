# 1 "/usr/include/opencascade/V3d_TypeOfShadingModel.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/V3d_TypeOfShadingModel.hxx"
# 20 "/usr/include/opencascade/V3d_TypeOfShadingModel.hxx"
# 1 "/usr/include/opencascade/Graphic3d_TypeOfShadingModel.hxx" 1
# 21 "/usr/include/opencascade/Graphic3d_TypeOfShadingModel.hxx"
enum Graphic3d_TypeOfShadingModel
{

  Graphic3d_TOSM_DEFAULT = -1,




  Graphic3d_TOSM_UNLIT = 0,





  Graphic3d_TOSM_FACET,






  Graphic3d_TOSM_VERTEX,




  Graphic3d_TOSM_FRAGMENT,


  Graphic3d_TOSM_PBR,


  Graphic3d_TOSM_PBR_FACET,


  Graphic3d_TOSM_NONE = Graphic3d_TOSM_UNLIT,
  V3d_COLOR = Graphic3d_TOSM_NONE,
  V3d_FLAT = Graphic3d_TOSM_FACET,
  V3d_GOURAUD = Graphic3d_TOSM_VERTEX,
  V3d_PHONG = Graphic3d_TOSM_FRAGMENT
};

enum
{

  Graphic3d_TypeOfShadingModel_NB = Graphic3d_TOSM_PBR_FACET + 1
};
# 21 "/usr/include/opencascade/V3d_TypeOfShadingModel.hxx" 2

typedef Graphic3d_TypeOfShadingModel V3d_TypeOfShadingModel;
