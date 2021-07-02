type
  Graphic3dTypeOfTextureMode* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfTextureMode",
                               header: "Graphic3d_TypeOfTextureMode.hxx".} = enum
    Graphic3dTOTM_OBJECT, Graphic3dTOTM_SPHERE, Graphic3dTOTM_EYE,
    Graphic3dTOTM_MANUAL, Graphic3dTOTM_SPRITE

