type
  Graphic3dTypeOfTexture* {.size: sizeof(cint),
                           importcpp: "Graphic3d_TypeOfTexture",
                           header: "Graphic3d_TypeOfTexture.hxx".} = enum
    Graphic3dTOT_1D, Graphic3dTOT_2D, Graphic3dTOT_2D_MIPMAP, Graphic3dTOT_CUBEMAP

