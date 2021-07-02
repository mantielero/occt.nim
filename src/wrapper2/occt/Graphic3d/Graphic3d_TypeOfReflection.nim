type
  Graphic3dTypeOfReflection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfReflection",
                              header: "Graphic3d_TypeOfReflection.hxx".} = enum
    Graphic3dTOR_AMBIENT = 0, Graphic3dTOR_DIFFUSE, Graphic3dTOR_SPECULAR,
    Graphic3dTOR_EMISSION


const
  Graphic3dTypeOfReflectionNB* = 4
