type
  Graphic3dTypeOfTextureFilter* {.size: sizeof(cint),
                                 importcpp: "Graphic3d_TypeOfTextureFilter",
                                 header: "Graphic3d_TypeOfTextureFilter.hxx".} = enum
    Graphic3dTOTF_NEAREST, Graphic3dTOTF_BILINEAR, Graphic3dTOTF_TRILINEAR

