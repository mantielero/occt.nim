# 1 "/usr/include/opencascade/V3d_TypeOfOrientation.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/V3d_TypeOfOrientation.hxx"
# 29 "/usr/include/opencascade/V3d_TypeOfOrientation.hxx"
enum V3d_TypeOfOrientation
{
  V3d_Xpos,
  V3d_Ypos,
  V3d_Zpos,
  V3d_Xneg,
  V3d_Yneg,
  V3d_Zneg,

  V3d_XposYpos,
  V3d_XposZpos,
  V3d_YposZpos,
  V3d_XnegYneg,
  V3d_XnegYpos,
  V3d_XnegZneg,
  V3d_XnegZpos,
  V3d_YnegZneg,
  V3d_YnegZpos,
  V3d_XposYneg,
  V3d_XposZneg,
  V3d_YposZneg,
  V3d_XposYposZpos,
  V3d_XposYnegZpos,
  V3d_XposYposZneg,
  V3d_XnegYposZpos,
  V3d_XposYnegZneg,
  V3d_XnegYposZneg,
  V3d_XnegYnegZpos,
  V3d_XnegYnegZneg,


  V3d_TypeOfOrientation_Zup_AxoLeft = V3d_XnegYnegZpos,
  V3d_TypeOfOrientation_Zup_AxoRight = V3d_XposYnegZpos,
  V3d_TypeOfOrientation_Zup_Front = V3d_Yneg,
  V3d_TypeOfOrientation_Zup_Back = V3d_Ypos,
  V3d_TypeOfOrientation_Zup_Top = V3d_Zpos,
  V3d_TypeOfOrientation_Zup_Bottom = V3d_Zneg,
  V3d_TypeOfOrientation_Zup_Left = V3d_Xneg,
  V3d_TypeOfOrientation_Zup_Right = V3d_Xpos,


  V3d_TypeOfOrientation_Yup_AxoLeft = V3d_XnegYposZpos,
  V3d_TypeOfOrientation_Yup_AxoRight = V3d_XposYposZpos,
  V3d_TypeOfOrientation_Yup_Front = V3d_Zpos,
  V3d_TypeOfOrientation_Yup_Back = V3d_Zneg,
  V3d_TypeOfOrientation_Yup_Top = V3d_Ypos,
  V3d_TypeOfOrientation_Yup_Bottom = V3d_Yneg,
  V3d_TypeOfOrientation_Yup_Left = V3d_Xpos,
  V3d_TypeOfOrientation_Yup_Right = V3d_Xneg,
};
